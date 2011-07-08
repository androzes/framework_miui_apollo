.class Lcom/nemustech/tiffany/world/TFEffect$26$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$26;->onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFEffect$26;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$26;)V
    .locals 0
    .parameter

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$26$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1834
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$26$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$26;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$26;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1835
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$26$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$26;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$26;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    return-void
.end method
