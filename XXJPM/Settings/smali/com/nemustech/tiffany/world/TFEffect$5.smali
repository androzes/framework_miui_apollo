.class Lcom/nemustech/tiffany/world/TFEffect$5;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffect3D(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1300(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect$5$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFEffect$5$1;-><init>(Lcom/nemustech/tiffany/world/TFEffect$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 638
    return-void
.end method
