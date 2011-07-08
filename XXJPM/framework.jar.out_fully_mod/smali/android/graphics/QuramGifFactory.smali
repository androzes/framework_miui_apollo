.class public Landroid/graphics/QuramGifFactory;
.super Ljava/lang/Object;
.source "QuramGifFactory.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "quramgifmovie"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CloseMovie(I)I
.end method

.method public static native Delay()I
.end method

.method public static native GetImagePlane([BIII)I
.end method

.method public static native Height()I
.end method

.method public static native IsOpaque()Z
.end method

.method public static native OpenMovie([BI[BIIII)I
.end method

.method public static native Width()I
.end method
