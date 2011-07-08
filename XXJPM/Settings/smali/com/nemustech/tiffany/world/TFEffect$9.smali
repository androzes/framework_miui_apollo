.class Lcom/nemustech/tiffany/world/TFEffect$9;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectReplace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$panel:[Lcom/nemustech/tiffany/world/TFPanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$9;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$9;->val$panel:[Lcom/nemustech/tiffany/world/TFPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nemustech/tiffany/world/TFAnimation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$9;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$9;->val$panel:[Lcom/nemustech/tiffany/world/TFPanel;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2000(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V

    .line 906
    return-void
.end method

.method public onAnimationStart(Lcom/nemustech/tiffany/world/TFAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 901
    return-void
.end method
