<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePackageTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('package_transactions', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger("user_id");
            $table->unsignedBigInteger("item_id");
            $table->unsignedBigInteger("order_id");
            $table->string("phone");
            $table->string("transaction_id")->unique();
            $table->enum('type', ['Bkash']);
            $table->boolean("is_verified")->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('package_transactions');
    }
}
