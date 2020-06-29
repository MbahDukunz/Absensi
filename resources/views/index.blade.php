<!DOCTYPE html>
<html>
<head>
	<title>Data Pegawai</title>
</head>
<body>

	<h2>KOMINFO KABUPATEN MALANG</h2>
	<h3>Data Pegawai</h3>

	<a href="/pegawai/tambah"> + Tambah Pegawai Baru</a>
	
	<br/>
	<br/>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nama</th>
			<th>Jabatan</th>
			<th>Email</th>
			<th>Opsi</th>
		</tr>
		@foreach($pegawai as $p)
		<tr>
			<td>{{ $p->user_id }}</td>
			<td>{{ $p->id_name }}</td>
			<td>{{ $p->position }}</td>
			<td>{{ $p->email }}</td>
			<td>
				<a href="/pegawai/edit/{{ $p->number }}">Edit</a>
				|
				<a href="/pegawai/hapus/{{ $p->number }}">Hapus</a>
			</td>
		</tr>
		@endforeach
	</table>


</body>
</html>