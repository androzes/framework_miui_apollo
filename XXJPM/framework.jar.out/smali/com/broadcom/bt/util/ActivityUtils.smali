.class public Lcom/broadcom/bt/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "intent"
    .parameter "savedInstanceState"

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, val:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_1
    return-object v0
.end method
