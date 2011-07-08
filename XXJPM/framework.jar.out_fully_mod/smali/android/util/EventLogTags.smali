.class public Landroid/util/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLogTags$Description;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Landroid/util/EventLogTags$Description;
    .locals 1
    .parameter "tag"

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/util/EventLogTags$Description;
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
