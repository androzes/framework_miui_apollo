.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final YUY2:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .locals 1
    .parameter "format"

    .prologue
    const/16 v0, 0x10

    .line 68
    sparse-switch p0, :sswitch_data_0

    .line 74
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 71
    :sswitch_1
    const/16 v0, 0xc

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method
