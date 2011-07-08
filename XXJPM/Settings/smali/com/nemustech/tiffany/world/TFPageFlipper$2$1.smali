.class Lcom/nemustech/tiffany/world/TFPageFlipper$2$1;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$2;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFPageFlipper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$2$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$2$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$2;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPageFlipper$2;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$300(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$2$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$2;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPageFlipper$2;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$300(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;->onAnimationStart(Z)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$2$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$2;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPageFlipper$2;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$400(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$2$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$2;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPageFlipper$2;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$502(Lcom/nemustech/tiffany/world/TFPageFlipper;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 174
    return-void
.end method
