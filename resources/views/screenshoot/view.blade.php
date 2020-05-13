@include('layouts.header')
@include('layouts.nav')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-1">
          <div class="col-sm-6">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Data Screenshoot</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      <div class="card">
            <div class="card-header">
              {{-- <h3 class="card-title">Referensi Data Guru</h3> --}}
              <form class="form-inline" method="POST" action="{{route('screenshoot.viewtanggal')}}">
                  @csrf
                <div class="form-group mb-2">
                  <label for="staticEmail2" class="sr-only">Email</label>
                <input type="date" class="form-control" name="tanggal" value="{{$tanggal}}">
                </div>&nbsp;
                <button type="submit" class="btn btn-primary mb-2">Tampilkan</button>&nbsp;
              </form>
              <a href="{{route('screenshoot.viewpdf',['date'=>$tanggal,'status'=>'1'])}}" class="btn btn-success mb-2" target="_blank">Cetak Laporan PNS</a>
              <a href="{{route('screenshoot.viewpdf',['date'=>$tanggal,'status'=>'2'])}}" class="btn btn-warning mb-2" target="_blank">Cetak Laporan GTT</a>
              <a href="{{route('screenshoot.viewpdf',['date'=>$tanggal,'status'=>'3'])}}" class="btn btn-danger mb-2" target="_blank">Cetak Laporan PTT</a>
              <a href="{{route('screenshoot.viewpdf',['date'=>$tanggal,'status'=>'0'])}}" class="btn btn-secondary mb-2" target="_blank">Cetak Laporan Seluruh PTK</a>
            </div>
            <!-- /.card-header -->
             
            <div class="card-body">
                <label for="">Jumlah laporan masuk pada {{$tanggal}} : {{$count}} PTK</label>
              <table id="tabel1" class="table table-striped table-bordered">
                <thead>
                <tr>
                  {{-- <th>id</th> --}}
                  <th>Kode PTK</th>
                  <th>Nama PTK</th>
                  <th>Tanggal Upload</th>
                  <th>Screenshoot</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                @foreach ($data as $detail)
                    <tr>
                        {{-- <td>{{$detail->id}}</td> --}}
                        <td>{{$detail->teacher_id}}</td>
                        <td>{{$detail->teacher->nama}}</td>
                        <td>{{$detail->tanggal}}</td>
                    <td><img src="{{asset('/ss/'.$detail->file)}}" alt="{{$detail->file}}" width="150px"></td>
                        <td>
                          <form onsubmit="return confirm('Yakin menghapus data?')" class="d-inline"
                          action="{{route('screenshoot.destroy', [$detail->id])}}" method="POST">
                          @csrf
                          <input type="hidden" name="_method" value="DELETE">
                          <button class="btn btn-sm btn-danger" type="submit">HAPUS</button>
                          <!-- <input type="submit" value="Delete" class="btn btn-danger btn-sm"> -->
                      </form>
                        </td>
                    </tr>
                @endforeach
                </tbody>
                
              </table>
            </div>
            <!-- /.card-body -->
          </div>        
      </div>
    </section>
    <!-- /.content -->
  </div>
  
@include('layouts.footer')
  <script>
    $(document).ready(function() {
        $('#tabel1').DataTable({
            responsive: true
        });
    } );
  </script>