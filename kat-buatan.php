<?php
include_once 'includes/header.inc.php';

include_once 'includes/nilai.inc.php';
$pro3 = new Nilai($db);
$stmt3 = $pro3->readAll();

include_once 'includes/alternatif.inc.php';
$pro1 = new Alternatif($db);
$stmt1 = $pro1->readAll();
$stmt4 = $pro1->readByKategoriBuatan();

include_once 'includes/kriteria.inc.php';
$pro2 = new Kriteria($db);
$stmt2 = $pro2->readAll();

include_once 'includes/bobot.inc.php';
$pro5 = new Bobot($db);
$stmt5 = $pro5->readAll();
?>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="jumbotron">
			    <h1>Wisata Buatan</h1>
			    <p>Kategori: Wisata Buatan </p>
			</div>
			<div class="col-xs-3 col-sm-3">
			</div>
			<div>
						<img src="assets/images/buatan/tamansari.jpg" class="img-thumbnail" width="75" height="75" alt="BACKGROUND" title="Tamansari" />
						<img src="assets/images/buatan/gembiraloka.jpg" class="img-thumbnail" width="75" height="75" alt="BACKGROUND" title="Gembira Loka" />
						<img src="assets/images/buatan/kidsfun.jpg" class="img-thumbnail" width="75" height="75" alt="BACKGROUND" title="Kids Fun" />
						<img src="assets/images/buatan/balongwaterpark.jpg" class="img-thumbnail" width="75" height="75" alt="BACKGROUND" title="Balong Waterpark" />
						<img src="assets/images/buatan/monumensegoroyoso.jpg" class="img-thumbnail" width="75" height="75" alt="BACKGROUND" title="Monumen Segoroyoso" />
						<img src="assets/images/buatan/bendungtegal.jpg" class="img-thumbnail" width="75" height="75" alt="BACKGROUND" title="Bendung Tegal" />
						<img src="assets/images/buatan/pemandianparangwedang.jpg" class="img-thumbnail" width="75" height="75" alt="BACKGROUND" title="Pemandian Parangwedang" />
						<img src="assets/images/buatan/grandpuriwaterpark.jpg" class="img-thumbnail" width="75" height="75" alt="BACKGROUND" title="Grand Puri Waterpark" />
			</div>
			<div id="container2" style="min-width: 100%; height: 400px; margin: 0 auto"></div>
			<br/>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Nilai Preferensi</h3>
						</div>
						<div class="panel-body">
							<ol>
								<?php while ($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)) : ?>
									<li><?php echo $row3['ket_nilai'] ?> (<?php echo $row3['jum_nilai'] ?>)</li>
								<?php endwhile; ?>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Kriteria & Bobot</h3>
						</div>
						<div class="panel-body">
							<ol>
							<?php while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)) : ?>
								<li><?php echo $row2['nama_kriteria'] ?></li>
							<?php endwhile; ?>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Skor Alternatif & Hasil</h3>
						</div>
						<div class="panel-body">
							<ol>
							<?php while ($row1 = $stmt1->fetch(PDO::FETCH_ASSOC)) :?>
								<li><?php echo $row1['nama'] ?></li>
							<?php endwhile; ?>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<hr>
	<footer class="text-center">Copyright &copy; 2019</footer>

	</div>

	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/highcharts.js"></script>
	<script src="assets/js/exporting.js"></script>
	<script>
		var chart1; // globally available
		$(document).ready(function() {
			chart1 = new Highcharts.Chart({
			chart: {
				renderTo: 'container2',
				type: 'column'
			},
			title: {
				text: 'Grafik Kategori Buatan'
			},
			xAxis: {
				categories: ['Nilai Alternatif Wisata Buatan']
			},
			yAxis: {
				title: {
					text: 'Jumlah Nilai'
				}
			},
			series: [
				<?php while ($row4 = $stmt4->fetch(PDO::FETCH_ASSOC)) : ?>
					//data yang diambil dari database dimasukan ke variable nama dan data
					{
						name: '<?php echo $row4['nama'] ?>',
						data: [<?php echo $row4['hasil_akhir'] ?>]
					},
				<?php endwhile; ?>
			]
			});
		});
	</script>
</body>
</html>
