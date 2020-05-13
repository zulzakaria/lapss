<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Teacher;
use App\Screenshoot;
use PDF;

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

    public function view()
    {
        $now = date('Y-m-d');
        // $data = Screenshoot::all()->sortBy('teacher_id');
        $data = Screenshoot::where('tanggal',$now)
                            ->orderBy('teacher_id','asc')
                            ->get();
        $count = $data->count();
        return view('screenshoot.view',['data' => $data,'tanggal'=>$now,'count' => $count]);
    }

    public function viewtanggal(Request $request)
    {
        $data = Screenshoot::where('tanggal',$request->tanggal)
                            ->orderBy('teacher_id','asc')
                            ->get();
        $count = $data->count();
        return view('screenshoot.view',['data' => $data,'tanggal'=>$request->tanggal,'count' => $count]);
    }

    public function viewpdf($status, $date)
    {
        if($status==1){
            $data = Screenshoot::where('tanggal',$date)
                                ->leftJoin('teachers', function($join){
                                    $join->on('screenshoots.teacher_id','=','teachers.id');
                                })
                                ->where('teachers.status','=','PNS')
                                ->get();
        }elseif ($status==2) {
            $data = Screenshoot::where('tanggal',$date)
                                ->leftJoin('teachers', function($join){
                                    $join->on('screenshoots.teacher_id','=','teachers.id');
                                })
                                ->where('teachers.status','=','GTT')
                                ->get();
        }elseif ($status==3) {
            $data = Screenshoot::where('tanggal',$date)
                                ->leftJoin('teachers', function($join){
                                    $join->on('screenshoots.teacher_id','=','teachers.id');
                                })
                                ->where(function ($query) {
                                    $query->where('teachers.status','=','PTT')
                                            ->orwhere('teachers.status','=','CS')
                                            ->orwhere('teachers.status','=','TKS');
                                        })                                
                                ->get();
        }else{
            $data = Screenshoot::where('tanggal',$date)
                            ->get();
        }
        
        // $pdf = PDF::loadview('screenshoot.viewpdf',['data'=>$data,'tanggal'=>$date]);
        // return $pdf->download('Dokumentasi_'.$date.'.pdf');
        return view('screenshoot.viewpdf',['data' => $data,'tanggal'=>$date]);
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
