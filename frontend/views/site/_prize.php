<div class="ui segment" style="border-radius: 15px;">
    <h3>Your Prize</h3>
    <p>Here is our simple gratitude for participating in our survey. Please follow instructions on how to claim the prize. Thank you. <br><br>
    Merchant: <b><?= $voucherCodeUser->voucherCode->merchant ?></b> <br>
    Voucher Code: <b><?= $voucherCodeUser->voucherCode->voucher_code ?></b> <br>
    How to claim: <?= $voucherCodeUser->voucherCode->instruction ?>
    </p>
</div>  