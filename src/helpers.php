<?php
/**
 * @author  Rizart Dokollari <r.dokollari@gmail.com>
 * @since   5/13/17
 */

function dd(...$args)
{
    foreach ($args as $value) {
        var_dump($value);
    }
    die(1);
}