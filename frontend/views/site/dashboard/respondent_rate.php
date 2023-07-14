<h1 class="text-center"><?= $alumni > 0 ? number_format($match/$alumni, 4) : number_format(0, 2) ?>%</h1>
<p><b><?= number_format($match, 0) ?> of <?= number_format($respondentsTotal, 0) ?></b> <?= $respondentsTotal > 1 ? 'respondents have' : 'respondent has' ?> exact match to the roster of <b><?= number_format($alumni, 0) ?></b> alumni data</p>