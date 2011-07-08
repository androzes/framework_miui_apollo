.class public Lcom/broadcom/bt/service/bpp/BppIntent;
.super Ljava/lang/Object;
.source "BppIntent.java"


# static fields
.field public static final EXTRA_CONTENT_NAME:Ljava/lang/String; = "bpp.print.extra.CONTENT_NAME"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "bpp.print.extra.CONTENT_TYPE"

.field public static final EXTRA_CONTENT_URI:Ljava/lang/String; = "bpp.print.extra.CONTENT_URI"

.field public static final EXTRA_SECONDARY_CONTENT_URI:Ljava/lang/String; = "bpp.print.extra.SECONDARY_CONTENT_URI"

.field public static final PRINT_ACTION:Ljava/lang/String; = "com.broadcom.bt.service.bpp.action.PRINT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrintAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter "contentType"
    .parameter "contentName"
    .parameter "contentUri"
    .parameter "secondaryContentUri"

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.service.bpp.action.PRINT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "bpp.print.extra.CONTENT_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v1, "bpp.print.extra.CONTENT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v1, "bpp.print.extra.CONTENT_URI"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v1, "bpp.print.extra.SECONDARY_CONTENT_URI"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    return-object v0
.end method
