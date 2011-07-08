.class Lcom/nemustech/tiffany/world/TFEffectActivity$2;
.super Ljava/lang/Object;
.source "TFEffectActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v5, 0x1

    const-string v6, "capBitmap.png"

    .line 125
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {p2}, Lcom/nemustech/tiffany/world/ITFServiceFrom$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nemustech/tiffany/world/ITFServiceFrom;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$402(Lcom/nemustech/tiffany/world/TFEffectActivity;Lcom/nemustech/tiffany/world/ITFServiceFrom;)Lcom/nemustech/tiffany/world/ITFServiceFrom;

    .line 127
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$200(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, bmpCapture:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 129
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "capBitmap.png"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v3, v6, v0, v4, v5}, Lcom/nemustech/tiffany/world/TFUtils;->saveBitmapToFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 131
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$700(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.nemustech.tiffany.world.keyEffect"

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v5}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$600(Lcom/nemustech/tiffany/world/TFEffectActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$700(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.nemustech.tiffany.world.keyPackage"

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v5}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$800(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)Z

    .line 139
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$400(Lcom/nemustech/tiffany/world/TFEffectActivity;)Lcom/nemustech/tiffany/world/ITFServiceFrom;

    move-result-object v3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "capBitmap.png"

    invoke-interface {v3, v4, v5}, Lcom/nemustech/tiffany/world/ITFServiceFrom;->setPathFrom(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 145
    .local v2, handler:Landroid/os/Handler;
    new-instance v3, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;

    invoke-direct {v3, p0, v2}, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;-><init>(Lcom/nemustech/tiffany/world/TFEffectActivity$2;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void

    .line 140
    .end local v2           #handler:Landroid/os/Handler;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 141
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$402(Lcom/nemustech/tiffany/world/TFEffectActivity;Lcom/nemustech/tiffany/world/ITFServiceFrom;)Lcom/nemustech/tiffany/world/ITFServiceFrom;

    .line 170
    return-void
.end method
