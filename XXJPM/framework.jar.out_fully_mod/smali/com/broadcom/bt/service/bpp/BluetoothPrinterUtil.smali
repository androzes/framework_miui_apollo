.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinterUtil;
.super Ljava/lang/Object;
.source "BluetoothPrinterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/BluetoothPrinterUtil$STATUS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPrinterUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static HandleToXhtml(I)[Ljava/lang/Byte;
    .locals 1
    .parameter "handle"

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ReleaseAllXhtmlHandles()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public static ReleaseXhtmlHandle(I)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 152
    return-void
.end method

.method public static XhtmlToHandle([Ljava/lang/Byte;)I
    .locals 1
    .parameter "xhtml"

    .prologue
    .line 142
    const/4 v0, -0x1

    return v0
.end method

.method public static textToXhtmlHandle([Ljava/lang/Byte;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 118
    const/4 v0, -0x1

    return v0
.end method

.method public static vCalToXhtmlHandle(Lcom/broadcom/bt/service/bpp/VCal;)I
    .locals 1
    .parameter "cal"

    .prologue
    .line 94
    const/4 v0, -0x1

    return v0
.end method

.method public static vCardToXhtmlHandle(Lcom/broadcom/bt/service/bpp/VCard;)I
    .locals 1
    .parameter "card"

    .prologue
    .line 82
    const/4 v0, -0x1

    return v0
.end method

.method public static vNoteToXhtmlHandle(Lcom/broadcom/bt/service/bpp/VNote;)I
    .locals 1
    .parameter "note"

    .prologue
    .line 106
    const/4 v0, -0x1

    return v0
.end method
