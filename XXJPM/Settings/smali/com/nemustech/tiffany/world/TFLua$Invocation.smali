.class public Lcom/nemustech/tiffany/world/TFLua$Invocation;
.super Ljava/lang/Object;
.source "TFLua.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Invocation"
.end annotation


# instance fields
.field public final mL:I

.field public final mRef:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "L"
    .parameter "ref"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/nemustech/tiffany/world/TFLua$Invocation;->mL:I

    .line 68
    iput p2, p0, Lcom/nemustech/tiffany/world/TFLua$Invocation;->mRef:I

    .line 69
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    iget v0, p0, Lcom/nemustech/tiffany/world/TFLua$Invocation;->mL:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFLua$Invocation;->mRef:I

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFLua;->cm_unref_proxy(II)V

    .line 75
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    iget v0, p0, Lcom/nemustech/tiffany/world/TFLua$Invocation;->mL:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFLua$Invocation;->mRef:I

    invoke-static {v0, v1, p2, p3}, Lcom/nemustech/tiffany/world/TFLua;->cm_invoke_proxy(IILjava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
