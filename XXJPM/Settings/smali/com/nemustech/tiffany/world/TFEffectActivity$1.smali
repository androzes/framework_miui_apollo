.class Lcom/nemustech/tiffany/world/TFEffectActivity$1;
.super Ljava/lang/Object;
.source "TFEffectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffectActivity;->startActivityTo(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$100(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$200(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$002(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 36
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$000(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$1;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$100(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$300(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)Z

    goto :goto_0
.end method
