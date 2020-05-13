<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Teacher;
use App\Screenshoot;

class ScreenshootController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $guru = Teacher::all();
        return view('screenshoot.index',['guru'=>$guru]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->teacher_id != $request->kunci){
            return back()->with('error','Data tidak terkirim, Ulangi kembali. Mohon memasukkan Key Upload dengan benar sesuai ID anda!!!');
        }else{
            $ss =   Screenshoot::where('teacher_id', '=', $request->teacher_id)
                    ->where('tanggal','=',$request->tanggal)
                    ->first();
            if($ss){
                return back()->with('error','Laporan tidak diterima karena data a.n. '.$ss->teacher->nama.' tanggal '.$request->tanggal.' sudah pernah dikirim sebelumnya.');
            }else{
                $data = $request->all();
                if ($request->hasFile('file')) {
                    $file = $request['teacher_id']."_".$request['tanggal'].".".$request->file('file')->getClientOriginalExtension();
                    $data['file'] = $file;
                    $request->file('file')->move('ss/',$file);
                }
                Screenshoot::create($data);
                return back()->with('success','Terima Kasih, Laporan anda telah berhasil terkirim!');
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
