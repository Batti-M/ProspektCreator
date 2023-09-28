<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\CsvData;
use Illuminate\Http\Request;

class CsvController extends Controller
{
    public function upload(Request $request)
    {
        $request->validate([
            'csv_file' => 'required|file|mimes:csv,txt'
        ]);

        
        $file = $request->file('csv_file');
        $csvData = file_get_contents($file);
        $rows = array_map('str_getcsv', explode("\n", $csvData));

        // Remove the header row and check for any empty rows
        $header = array_shift($rows);
        $rows = array_filter($rows, function($row) {
            return trim(implode('', $row)) !== '';
        });
        
        foreach ($rows as $row) {
            if (count($header) !== count($row)) {
                dd('Mismatch!', $header, $row);
            }
            try {
                $data = array_combine($header, $row); 
                CsvData::updateOrCreate($data);
            } catch (\Exception $e) {
                dd('Error:', $e->getMessage(), $header, $row);
            }
        }
        //keep for later refactoring,maybe this approach is better
        $images = CsvData::all()->map(function ($item) {
            $imageFilename = $item->image_url;
            
            return asset('storage/products/' . $imageFilename);
        });
        
        
        return Inertia::render('Home', [
            'csvData' => CsvData::all(),
            'headers' => $header,
            'rows' => $rows,
            'message' => 'CSV file successfully imported',
            ]
        );
    }

}
