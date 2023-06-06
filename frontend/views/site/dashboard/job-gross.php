<table class="table table-bordered table-striped table-responsive">
    <thead>
        <td align=center><b>Initial Gross</b></td>
        <td align=center><b>No. of Alumnus</b></td>
    </thead>
    <tbody>
    <?php $total = 0; ?>
    <?php if(!empty($data)){ ?>
        <?php foreach($data as $datum){ ?>
        <tr>
            <td align=center><?= $datum['option'] ?></td>
            <td align=center><?= number_format($datum['value'], 0) ?></td>
        </tr>
        <?php $total += $datum['value']; ?>
        <?php } ?>
    <?php } ?>
    <tr>
        <td align=right><b>Total</b></td>
        <td align=center><b><?= number_format($total, 0) ?></b></td>
    </tr>
    </tbody>
</table>