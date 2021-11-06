<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobTrasnactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_trasnactions', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger("job_id");
            $table->unsignedBigInteger("proposal_id");
            $table->unsignedBigInteger("user_id");
            $table->string("phone");
            $table->string("transaction_id")->unique();
            $table->boolean("is_verified")->default(false);
            $table->enum("type",['Bkash']);

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
        Schema::dropIfExists('job_trasnactions');
    }
}
