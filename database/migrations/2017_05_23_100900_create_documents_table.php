<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDocumentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('documents', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',200)->unique();
            $table->string('desc',200)->nullable();
            $table->integer('owner')->unsigned();
            $table->integer('reviewer')->unsigned();
            $table->integer('approver')->unsigned();
            $table->string('reviewperiod',50)->nullable();
            $table->string('fid')->nullable();
            $table->timestamps();

            $table->foreign('owner')->references('id')->on('roles')->onDelete('restrict');
            $table->foreign('reviewer')->references('id')->on('roles')->onDelete('restrict');
            $table->foreign('approver')->references('id')->on('roles')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('documents');
    }
}
