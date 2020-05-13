<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use App\Teacher;

class TeachersImport implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $collection)
    {
        foreach ($collection as $key => $col) {
            if ($key >= 4) {
                Teacher::create([
                    'nourut'=>$col[1],
                    'nama'=>$col[2],
                    'status'=>$col[3],
                ]);
            }
        }
    }
}
