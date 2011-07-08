.class public Landroid/renderscript/RenderScriptGL$File;
.super Landroid/renderscript/BaseObj;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScriptGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "File"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/renderscript/RenderScriptGL;


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScriptGL;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 104
    iput-object p1, p0, Landroid/renderscript/RenderScriptGL$File;->this$0:Landroid/renderscript/RenderScriptGL;

    .line 105
    invoke-direct {p0, p1}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 106
    iput p2, p0, Landroid/renderscript/RenderScriptGL$File;->mID:I

    .line 107
    return-void
.end method
