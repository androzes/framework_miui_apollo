.class Lcom/nemustech/tiffany/world/TFPageFlipper$2;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$2;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$2;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$600(Lcom/nemustech/tiffany/world/TFPageFlipper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/TFPageFlipper$2$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFPageFlipper$2$1;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method
