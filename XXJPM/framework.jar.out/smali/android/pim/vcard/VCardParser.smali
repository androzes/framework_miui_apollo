.class public abstract Landroid/pim/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# instance fields
.field protected mCanceled:Z

.field protected final mParseType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardParser;-><init>(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "parseType"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/pim/vcard/VCardParser;->mParseType:I

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParser;->mCanceled:Z

    .line 100
    return-void
.end method

.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/pim/vcard/VCardInterpreter;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/io/InputStream;Landroid/pim/vcard/VCardInterpreter;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/pim/vcard/VCardInterpreter;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation
.end method
