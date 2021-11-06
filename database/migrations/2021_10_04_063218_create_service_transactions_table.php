<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServiceTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('service_transactions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("service_id");
            $table->unsignedBigInteger("service_user_id");
            $table->string("phone");
            $table->string("transaction_id")->unique();
            $table->boolean("is_verified")->default(false);
            $table->enum("type", ['Bkash']);
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
        Schema::dropIfExists('service_transactions');
    }
}
