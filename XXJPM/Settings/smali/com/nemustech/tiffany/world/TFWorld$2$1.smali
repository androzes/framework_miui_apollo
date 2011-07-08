.class Lcom/nemustech/tiffany/world/TFWorld$2$1;
.super Ljava/lang/Object;
.source "TFWorld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFWorld$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFWorld$2;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFWorld$2;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld$2$1;->this$1:Lcom/nemustech/tiffany/world/TFWorld$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 507
    const-string v0, "TFWorld"

    const-string v1, "SetStartupImage works!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld$2$1;->this$1:Lcom/nemustech/tiffany/world/TFWorld$2;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld$2;->this$0:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mGLSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld$2$1;->this$1:Lcom/nemustech/tiffany/world/TFWorld$2;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld$2;->this$0:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/world/TFWorld;->access$002(Lcom/nemustech/tiffany/world/TFWorld;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 510
    return-void
.end method
