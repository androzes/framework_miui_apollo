.class public Landroid/pim/vcard/exception/VCardVersionException;
.super Landroid/pim/vcard/exception/VCardException;
.source "VCardVersionException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/pim/vcard/exception/VCardException;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
