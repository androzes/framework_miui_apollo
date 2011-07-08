.class Lcom/nemustech/tiffany/world/TFWorld$1;
.super Ljava/lang/Object;
.source "TFWorld.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFView$GLWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFWorld;->show(Landroid/view/View;)Lcom/nemustech/tiffany/world/TFError;
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
    .line 271
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld$1;->this$0:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;
    .locals 2
    .parameter "gl"

    .prologue
    .line 272
    new-instance v0, Lcom/nemustech/tiffany/world/TFGL;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld$1;->this$0:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-direct {v0, p1, v1}, Lcom/nemustech/tiffany/world/TFGL;-><init>(Ljavax/microedition/khronos/opengles/GL;Lcom/nemustech/tiffany/world/TFWorld;)V

    return-object v0
.end method
