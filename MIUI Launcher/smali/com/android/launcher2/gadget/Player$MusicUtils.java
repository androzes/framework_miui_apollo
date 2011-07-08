package com.android.launcher2.gadget; class Player$MusicUtils {/*

.class Lcom/android/launcher2/gadget/Player$MusicUtils;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicUtils"
.end annotation


# static fields
.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;

.field private static sUnknownArtistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1113
    new-instance v0, Ljava/util/Formatter;

    #v0=(UninitRef);
    sget-object v1, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    #v1=(Reference);
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 1114
    const/4 v0, 0x5

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static decorateLyricWithHtml(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, lrcArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v7, "%s<br/>"

    .line 1146
    #v7=(Reference);
    const-string v0, "%s<br/>"

    .line 1147
    .local v0, HTML_BR_PATTERN:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1148
    .local v3, size:I
    #v3=(Integer);
    if-lez v3, :cond_0

    .line 1149
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/CharSequence;

    .line 1151
    .local v2, raw:Ljava/lang/CharSequence;
    instance-of v4, v2, Ljava/lang/String;

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 1152
    const-string v4, "%s<br/>"

    #v4=(Reference);
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    #v1=(Integer);
    if-ge v1, v3, :cond_0

    .line 1155
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #raw:Ljava/lang/CharSequence;
    check-cast v2, Ljava/lang/CharSequence;

    .line 1156
    .restart local v2       #raw:Ljava/lang/CharSequence;
    const-string v4, "%s<br/>"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1160
    .end local v1           #i:I
    .end local v2           #raw:Ljava/lang/CharSequence;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method public static getLocaleArtistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "src"

    .prologue
    .line 1134
    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 1135
    :cond_0
    #v0=(Conflicted);
    sget-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sUnknownArtistName:Ljava/lang/String;

    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 1136
    sget-object p1, Lcom/android/launcher2/gadget/Player$MusicUtils;->sUnknownArtistName:Ljava/lang/String;

    .line 1142
    :cond_1
    :goto_0
    #v0=(Conflicted);
    return-object p1

    .line 1138
    :cond_2
    #v0=(Reference);
    const v0, 0x7f0c0064

    #v0=(Integer);
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sUnknownArtistName:Ljava/lang/String;

    .line 1139
    sget-object p1, Lcom/android/launcher2/gadget/Player$MusicUtils;->sUnknownArtistName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"
    .parameter "resid"

    .prologue
    const-wide/16 v7, 0xe10

    #v7=(LongLo);v8=(LongHi);
    const/4 v4, 0x0

    #v4=(Null);
    const-wide/16 v5, 0x3c

    .line 1119
    #v5=(LongLo);v6=(LongHi);
    cmp-long v2, p1, v7

    #v2=(Byte);
    if-gez v2, :cond_0

    move v2, p3

    :goto_0
    #v2=(Integer);
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, durationformat:Ljava/lang/String;
    #v0=(Reference);
    sget-object v2, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    #v2=(Reference);
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1123
    sget-object v1, Lcom/android/launcher2/gadget/Player$MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1124
    .local v1, timeArgs:[Ljava/lang/Object;
    #v1=(Reference);
    div-long v2, p1, v7

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v4

    .line 1125
    const/4 v2, 0x1

    #v2=(One);
    div-long v3, p1, v5

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    .line 1126
    const/4 v2, 0x2

    #v2=(PosByte);
    div-long v3, p1, v5

    #v3=(LongLo);
    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    .line 1127
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1128
    const/4 v2, 0x4

    rem-long v3, p1, v5

    #v3=(LongLo);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    .line 1130
    sget-object v2, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatter:Ljava/util/Formatter;

    #v2=(Reference);
    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1119
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Byte);v3=(Uninit);v4=(Null);
    const v2, 0x7f0c0069

    #v2=(Integer);
    goto :goto_0
.end method

*/}
