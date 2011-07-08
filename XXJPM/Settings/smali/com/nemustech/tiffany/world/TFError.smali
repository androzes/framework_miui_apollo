.class public Lcom/nemustech/tiffany/world/TFError;
.super Ljava/lang/Object;
.source "TFError.java"


# static fields
.field public static final ALREADY_ATTACHED:Lcom/nemustech/tiffany/world/TFError;

.field public static final ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

.field public static final INVALID_PARAM:Lcom/nemustech/tiffany/world/TFError;

.field public static final NOT_ATTACHED:Lcom/nemustech/tiffany/world/TFError;

.field public static final OUT_OF_INDEX:Lcom/nemustech/tiffany/world/TFError;


# instance fields
.field private final mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/nemustech/tiffany/world/TFError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/world/TFError;-><init>(I)V

    sput-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    .line 13
    new-instance v0, Lcom/nemustech/tiffany/world/TFError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/world/TFError;-><init>(I)V

    sput-object v0, Lcom/nemustech/tiffany/world/TFError;->INVALID_PARAM:Lcom/nemustech/tiffany/world/TFError;

    .line 14
    new-instance v0, Lcom/nemustech/tiffany/world/TFError;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/world/TFError;-><init>(I)V

    sput-object v0, Lcom/nemustech/tiffany/world/TFError;->ALREADY_ATTACHED:Lcom/nemustech/tiffany/world/TFError;

    .line 15
    new-instance v0, Lcom/nemustech/tiffany/world/TFError;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/world/TFError;-><init>(I)V

    sput-object v0, Lcom/nemustech/tiffany/world/TFError;->NOT_ATTACHED:Lcom/nemustech/tiffany/world/TFError;

    .line 16
    new-instance v0, Lcom/nemustech/tiffany/world/TFError;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/world/TFError;-><init>(I)V

    sput-object v0, Lcom/nemustech/tiffany/world/TFError;->OUT_OF_INDEX:Lcom/nemustech/tiffany/world/TFError;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "error_code"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/nemustech/tiffany/world/TFError;->mErrorCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/nemustech/tiffany/world/TFError;->mErrorCode:I

    return v0
.end method
