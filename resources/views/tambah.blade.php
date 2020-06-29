<!DOCTYPE html>
<html>
<head>
	<title>Input Pegawai</title>
</head>
<body>

	<h2>DINAS KOMINFO KABUPATEN MALANG</h2>
	<h3>Data Pegawai</h3>

	<a href="/pegawai"> Kembali</a>
	
	<br/>
	<br/>

	<form action="/pegawai/store" method="post">
		{{ csrf_field() }}
		ID Pegawai <input type="number" name="id" required="required"> <br/>
		Nama <input type="text" name="nama" required="required"> <br/>
		Jabatan <input type="text" name="jabatan" required="required"> <br/>
		Email <input type="text" name="email" required="required"> <br/>
		<input type="submit" value="Simpan Data">
	</form>

</body>
</html>