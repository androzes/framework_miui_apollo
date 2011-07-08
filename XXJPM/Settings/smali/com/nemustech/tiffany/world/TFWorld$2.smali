.class Lcom/nemustech/tiffany/world/TFWorld$2;
.super Ljava/lang/Object;
.source "TFWorld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFWorld;->setStartupImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFWorld;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld$2;->this$0:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld$2;->this$0:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFWorld;->access$100(Lcom/nemustech/tiffany/world/TFWorld;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/TFWorld$2$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFWorld$2$1;-><init>(Lcom/nemustech/tiffany/world/TFWorld$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 512
    return-void
.end method
