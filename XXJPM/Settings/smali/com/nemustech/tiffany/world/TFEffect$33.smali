.class Lcom/nemustech/tiffany/world/TFEffect$33;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->captureDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Landroid/view/View;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2540
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$33;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$33;->val$decorView:Landroid/view/View;

    iput-object p3, p0, Lcom/nemustech/tiffany/world/TFEffect$33;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2541
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$33;->val$decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2542
    .local v0, dlgBmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$33;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect;->mDialogBitmapListener:Lcom/nemustech/tiffany/world/TFEffect$OnDialogBitmapListener;

    if-eqz v1, :cond_0

    .line 2543
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$33;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect;->mDialogBitmapListener:Lcom/nemustech/tiffany/world/TFEffect$OnDialogBitmapListener;

    invoke-interface {v1, v0}, Lcom/nemustech/tiffany/world/TFEffect$OnDialogBitmapListener;->onDialogBitmap(Landroid/graphics/Bitmap;)V

    .line 2544
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$33;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2546
    :cond_0
    return-void
.end method
