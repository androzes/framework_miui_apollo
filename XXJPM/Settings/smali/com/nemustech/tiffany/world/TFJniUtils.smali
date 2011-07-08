.class public Lcom/nemustech/tiffany/world/TFJniUtils;
.super Ljava/lang/Object;
.source "TFJniUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "tfutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native compress([BII[BII)I
.end method

.method public static native copy_buffer([B[I[I[I[IIIZ)V
.end method

.method public static native copy_raw_buffer([B[I[B[I[III)V
.end method

.method public static native crop_buffer([I[I[I[I)V
.end method

.method public static native decompress([BII[BII)I
.end method

.method public static native extract(II[I[IZ)V
.end method

.method public static native get_jpeg_data_size([BI)I
.end method

.method public static native get_png_data_size([B)I
.end method

.method public static native load_jpeg_mem([BI[I[B)I
.end method

.method public static native load_png_mem([B[I[B)I
.end method

.method public static native make_byte_to_int_buffer([II[BI)V
.end method

.method public static native verifyContext(Landroid/content/Context;)V
.end method
