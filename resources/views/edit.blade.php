<!DOCTYPE html>
<html>
<head>
	<title>Edit Data Pegawai</title>
</head>
<body>

	<h2>DINAS KOMINFO KABUPATEN MALANG</h2>
	<h3>Data Pegawai</h3>

	<a href="/pegawai"> Kembali</a>
	
	<br/>
	<br/>

	@foreach($pegawai as $p)
	<form action="/pegawai/update" method="post">
		{{ csrf_field() }}
		<input type="hidden" name="number" value="{{ $p->number }}"> <br/>
		ID <input type="text" name="id" value="{{ $p->user_id }}"> <br/>
		Nama <input type="text" required="required" name="nama" value="{{ $p->id_name }}"> <br/>
		Jabatan <input type="text" required="required" name="jabatan" value="{{ $p->position }}"> <br/>
		Email <input type="text" required="required" name="email" value="{{ $p->email }}"> <br/>
		<input type="submit" value="Simpan Data">
	</form>
	@endforeach
		

</body>
</html>