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
              <li class="breadcrumb-item active"><a href="{{route('teachers.index')}}">Referensi Data Guru</a></li>
              <li class="breadcrumb-item active">Tambah Data Guru</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      <div class="card card-success">
            <div class="card-header">
              <h3 class="card-title">+ Formulir Penambahan Data Guru</h3> 
            </div>
            <!-- /.card-header -->
            <div class="card-body">
            <form enctype="multipart/form-data" action="{{route('teachers.store')}}" method="POST">
                @csrf
                <label for="name">Nomor Urut : <code>*)</code></label>
                <input class="form-control col-md-4" type="text" name="nourut" placeholder="..." required>
                <hr/>
                <label for="name">Nama Lengkap : <code>*)</code></label>
                <input class="form-control col-md-6" type="text" name="nama" placeholder="..." required>
                <hr/>

                <label for="status">Status : <code>*)</code></label>
                @php
                $arr = ['PNS','GTT','PTT','CS','TKS'];   
                @endphp
                <select class="form-control col-md-3" name="status">
                @for ($i = 0; $i < 5; $i++)
                  <option value="{{$arr[$i]}}">{{$arr[$i]}}</option>
                @endfor
    
                            
                <input type="submit" class="btn btn-lg btn-success" value="Simpan">&nbsp;
                &nbsp;<input type="reset" class="btn btn-lg btn-warning" value="Batal">
            </form>
            </div>
            <!-- /.card-body -->
          </div>        
      </div>
    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer')