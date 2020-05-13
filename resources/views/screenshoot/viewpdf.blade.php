@php
    $bulan = array (1 =>   'Januari',
                        'Februari',
                        'Maret',
                        'April',
                        'Mei',
                        'Juni',
                        'Juli',
                        'Agustus',
                        'September',
                        'Oktober',
                        'November',
                        'Desember'
                    );
    $split = explode('-', $tanggal);
    $tanggal = $split[2] . ' ' . $bulan[ (int)$split[1] ] . ' ' . $split[0];
@endphp
<html>
<head>
	<title>{{env('APP_FULLNAME')}}</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<style type="text/css">
		table tr td,
		table tr th{
			font-size: 9pt;
		}
	</style>
	<center>
    <table>
      <tr>
      <td align="center" width="10%"><img src="{{asset('img/prov.png')}}" width="80px"></td>
        <td align="center"><h6>PEMERINTAH PROVINSI GORONTALO<br>
          DINAS PENDIDIKAN KEBUDAYAAN PEMUDA DAN OLAHRAGA
          SEKOLAH MENENGAH KEJURUAN </h6><h4>SMK NEGERI 1 LIMBOTO</h4>
          <i>Jalan Abdulrahman Moito No. 117 Telp.0435 - 881174 – 881175 Kel. Dutulanaa Limboto Kp.96231<br>
          Website :www.smkn1limboto.sch.id e-mail : smkn.limboto79@gmail.com</i></td>
          <td align="center" width="10%"><img src="{{asset('img/tut.png')}}" width="80px"></td>
      </tr>
    </table>
    <hr/>
    
    LAMPIRAN BUKTI SCREENSHOT POSTINGAN FORMASI HUBMAS<br>
    PROVINSI GORONTALO MELALUI AKUN FACEBOOK<br>
    TANGGAL : {{$tanggal}}
  
    <p/>
    <p/>
    <p/>
    
      @foreach ($data as $detail)
         
          {{-- {{$detail->teacher->nama}}     --}}
          <img src="{{asset('/ss/'.$detail->file)}}" alt="{{$detail->file}}" width="350px" style="border:2px solid black">&nbsp;&nbsp;&nbsp;
              
          
      @endforeach
    </center>
    </table>

</body>
</html>

<script type="text/javascript">
  window.onload = function() { window.print(); }
 </script>
           