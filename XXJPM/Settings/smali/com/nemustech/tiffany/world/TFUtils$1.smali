.class Lcom/nemustech/tiffany/world/TFUtils$1;
.super Ljava/lang/Object;
.source "TFUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$graphics$Bitmap$Config:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 473
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nemustech/tiffany/world/TFUtils$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    :try_start_0
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
