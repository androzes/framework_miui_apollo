.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Gsm/SmsMessage"

.field public static mDay:I

.field public static mHour:I

.field public static mMin:I

.field public static mMonth:I

.field public static mSec:I

.field public static mTimezone:I

.field public static mYear:I

.field private static unsupportedDatacodingScheme:Z


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private protocolIdentifier:I

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 837
    return-void
.end method

.method public static ConvertDateStringToBCD(Ljava/lang/String;)[B
    .locals 8
    .parameter "mDate"

    .prologue
    .line 1925
    const-string v0, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1928
    .local v4, year:Ljava/lang/String;
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1929
    .local v3, month:Ljava/lang/String;
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1930
    .local v0, day:Ljava/lang/String;
    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1931
    .local v1, hour:Ljava/lang/String;
    const/16 v2, 0x8

    const/16 v5, 0xa

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1932
    .local v2, min:Ljava/lang/String;
    const/16 v5, 0xa

    const/16 v6, 0xc

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1934
    .local p0, sec:Ljava/lang/String;
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. year:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v4           #year:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    .line 1938
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v3           #month:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    .line 1939
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0           #day:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    .line 1940
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    .line 1941
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    .line 1942
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0           #sec:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    .line 1943
    const/4 p0, 0x0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 1945
    const/4 p0, 0x0

    .line 1946
    .local p0, zone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    .line 1949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    .end local p0           #zone:Ljava/util/TimeZone;
    int-to-long v2, p0

    .line 1950
    .local v2, tzOffset:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timezeone"

    .end local v1           #hour:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    .line 1953
    neg-long v2, v2

    .line 1954
    const-wide/32 v0, 0xdbba0

    div-long v0, v2, v0

    .line 1955
    .local v0, temp:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timezeone->temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    long-to-int p0, v0

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    .line 1957
    .local p0, temp2:I
    div-int/lit8 v4, p0, 0xa

    shl-int/lit8 v4, v4, 0x4

    rem-int/lit8 p0, p0, 0xa

    .end local p0           #temp2:I
    add-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v4

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 1958
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimezone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2. year:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " month:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " day:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const-string p0, "%02d%02d%02d%02d%02d%02d%02x"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1976
    .local p0, timestamp:Ljava/lang/String;
    :goto_0
    const-string v0, "Gsm/SmsMessage"

    .end local v0           #temp:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp string: "

    .end local v2           #tzOffset:J
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #timestamp:Ljava/lang/String;
    return-object p0

    .line 1966
    .restart local v2       #tzOffset:J
    :cond_0
    const-wide/32 v0, 0xdbba0

    div-long v0, v2, v0

    .line 1967
    .restart local v0       #temp:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timezeone->temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    long-to-int p0, v0

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 1969
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimezone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2. year:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " month:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " day:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const-string p0, "%02d%02d%02d%02d%02d%02d%02d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #timestamp:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 9
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/16 v5, 0xa0

    const/16 v8, 0x8c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1193
    new-instance v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1195
    .local v3, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez p1, :cond_0

    move v4, v6

    :goto_0
    :try_start_0
    invoke-static {p0, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v2

    .line 1196
    .local v2, septets:I
    iput v2, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1234
    if-le v2, v5, :cond_2

    .line 1241
    rem-int/lit16 v4, v2, 0x99

    if-eqz v4, :cond_1

    .line 1242
    div-int/lit16 v4, v2, 0x99

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1243
    const/16 v4, 0x99

    rem-int/lit16 v5, v2, 0x99

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1255
    :goto_1
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1280
    .end local v2           #septets:I
    :goto_2
    return-object v3

    :cond_0
    move v4, v7

    .line 1195
    goto :goto_0

    .line 1247
    .restart local v2       #septets:I
    :cond_1
    div-int/lit16 v4, v2, 0x99

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1248
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1256
    .end local v2           #septets:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1257
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v1, v4, 0x2

    .line 1258
    .local v1, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1259
    if-le v1, v8, :cond_4

    .line 1265
    rem-int/lit16 v4, v1, 0x86

    if-eqz v4, :cond_3

    .line 1266
    div-int/lit16 v4, v1, 0x86

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1267
    const/16 v4, 0x86

    rem-int/lit16 v5, v1, 0x86

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1278
    :goto_3
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 1251
    .end local v0           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v1           #octets:I
    .restart local v2       #septets:I
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1252
    sub-int v4, v5, v2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1270
    .end local v2           #septets:I
    .restart local v0       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v1       #octets:I
    :cond_3
    div-int/lit16 v4, v1, 0x86

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1271
    iput v7, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1275
    :cond_4
    iput v6, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1276
    sub-int v4, v8, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 13
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"

    .prologue
    const/16 v8, 0x8c

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1292
    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1293
    .local v6, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v7, 0x4

    new-array v4, v7, [I

    .line 1294
    .local v4, ret:[I
    if-nez p2, :cond_3

    .line 1298
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v5

    .line 1299
    .local v5, septets:I
    const/4 v7, 0x1

    aput v5, v4, v7

    .line 1301
    const/4 v1, 0x0

    .line 1302
    .local v1, MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    const/4 v0, 0x0

    .line 1308
    .local v0, MAX_USER_DATA_SEPTETS_LOCAL:I
    const/16 v0, 0xa0

    .line 1309
    const/16 v1, 0x99

    .line 1312
    if-le v5, v0, :cond_2

    .line 1315
    rem-int v7, v5, v1

    if-eqz v7, :cond_1

    .line 1316
    const/4 v7, 0x0

    div-int v8, v5, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v4, v7

    .line 1317
    const/4 v7, 0x2

    rem-int v8, v5, v1

    sub-int v8, v1, v8

    aput v8, v4, v7

    .line 1330
    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v4, v7
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    .end local v0           #MAX_USER_DATA_SEPTETS_LOCAL:I
    .end local v1           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local v5           #septets:I
    :cond_0
    :goto_1
    aget v7, v4, v9

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1357
    aget v7, v4, v10

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1358
    aget v7, v4, v11

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1359
    aget v7, v4, v12

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1360
    return-object v6

    .line 1320
    .restart local v0       #MAX_USER_DATA_SEPTETS_LOCAL:I
    .restart local v1       #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .restart local v5       #septets:I
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    div-int v8, v5, v1

    aput v8, v4, v7

    .line 1321
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v4, v7
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1331
    .end local v0           #MAX_USER_DATA_SEPTETS_LOCAL:I
    .end local v1           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local v5           #septets:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1332
    .local v2, e:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/EncodeException;->printStackTrace()V

    goto :goto_1

    .line 1325
    .end local v2           #e:Lcom/android/internal/telephony/EncodeException;
    .restart local v0       #MAX_USER_DATA_SEPTETS_LOCAL:I
    .restart local v1       #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .restart local v5       #septets:I
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_2
    aput v8, v4, v7

    .line 1326
    const/4 v7, 0x2

    sub-int v8, v0, v5

    aput v8, v4, v7
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1334
    .end local v0           #MAX_USER_DATA_SEPTETS_LOCAL:I
    .end local v1           #MAX_USER_DATA_SEPTETS_WITH_HEADER_LOCAL:I
    .end local v5           #septets:I
    :cond_3
    if-ne p2, v10, :cond_0

    .line 1336
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    mul-int/lit8 v3, v7, 0x2

    .line 1337
    .local v3, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, v4, v10

    .line 1338
    if-le v3, v8, :cond_5

    .line 1342
    rem-int/lit16 v7, v3, 0x86

    if-eqz v7, :cond_4

    .line 1343
    div-int/lit16 v7, v3, 0x86

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v9

    .line 1344
    const/16 v7, 0x86

    rem-int/lit16 v8, v3, 0x86

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    aput v7, v4, v11

    .line 1354
    :goto_2
    aput v12, v4, v12

    goto :goto_1

    .line 1347
    :cond_4
    div-int/lit16 v7, v3, 0x86

    aput v7, v4, v9

    .line 1348
    aput v9, v4, v11

    goto :goto_2

    .line 1351
    :cond_5
    aput v10, v4, v9

    .line 1352
    sub-int v7, v8, v3

    div-int/lit8 v7, v7, 0x2

    aput v7, v4, v11

    goto :goto_2
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 9
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const-string v7, "Gsm/SmsMessage"

    .line 223
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 225
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->indexOnIcc:I

    .line 230
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 231
    const-string v4, "Gsm/SmsMessage"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 251
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v4

    .line 235
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->statusOnIcc:I

    .line 238
    array-length v4, p1

    sub-int v3, v4, v5

    .line 242
    .local v3, size:I
    new-array v2, v3, [B

    .line 243
    .local v2, pdu:[B
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V

    .line 246
    const-string v4, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mti: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indexOnIcc :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->indexOnIcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " statusOnIcc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->statusOnIcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    .line 248
    goto :goto_0

    .line 249
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 250
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "Gsm/SmsMessage"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    .line 251
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 153
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 154
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 158
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 156
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 157
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static decToBcd(I)I
    .locals 4
    .parameter "digit"

    .prologue
    .line 1906
    const/4 v1, 0x0

    .line 1907
    .local v1, left:I
    const/4 v2, 0x0

    .line 1908
    .local v2, right:I
    const/4 v0, 0x0

    .line 1910
    .local v0, bcd_value:I
    div-int/lit8 v1, p0, 0xa

    .line 1911
    rem-int/lit8 v2, p0, 0xa

    .line 1913
    mul-int/lit8 v3, v2, 0xa

    add-int v0, v3, v1

    .line 1915
    return v0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 383
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 385
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 387
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 389
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 390
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 397
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 398
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    return-object v0

    .line 394
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "date"
    .parameter "header"

    .prologue
    .line 2036
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2037
    :cond_0
    const/4 p0, 0x0

    .line 2125
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return-object p0

    .line 2040
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 2042
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    const/4 v1, 0x0

    .line 2044
    .local v1, mtiByte:B
    const/4 v0, 0x0

    .line 2048
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 2052
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 2054
    .local v0, userData:[B
    const/4 p1, 0x0

    aget-byte p1, v0, p1

    .end local p1
    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xa0

    if-le p1, v1, :cond_2

    .line 2056
    .end local v1           #mtiByte:B
    const/4 p0, 0x0

    goto :goto_0

    .line 2066
    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2070
    const/4 p1, 0x7

    new-array p1, p1, [B

    .line 2072
    .local p1, timestamp:[B
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object p1

    .line 2074
    const/4 v1, 0x0

    array-length v3, p1

    invoke-virtual {p0, p1, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2076
    const/4 p1, 0x0

    array-length v1, v0

    .end local p1           #timestamp:[B
    invoke-virtual {p0, v0, p1, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2124
    .end local v0           #userData:[B
    .end local p2
    .end local p3
    .end local p4
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v2, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    move-object p0, v2

    .line 2125
    goto :goto_0

    .line 2078
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, Address:Ljava/lang/String;
    .restart local p2
    .restart local p3
    .restart local p4
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 2084
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v1           #mtiByte:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :goto_2
    :try_start_2
    const-string/jumbo p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    .line 2092
    .local p1, textPart:[B
    if-eqz p4, :cond_3

    .line 2093
    array-length p2, p4

    .end local p2
    array-length v0, p1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 2095
    .local p2, userData:[B
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v3, p4

    invoke-static {p4, v0, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2096
    const/4 v0, 0x0

    array-length p4, p4

    .end local p4
    array-length v1, p1

    invoke-static {p1, v0, p2, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2101
    .end local p1           #textPart:[B
    :goto_3
    array-length p1, p2

    const/16 p4, 0x8c

    if-le p1, p4, :cond_4

    .line 2103
    const/4 p0, 0x0

    goto :goto_0

    .line 2085
    .local p2, message:Ljava/lang/String;
    .restart local p4
    :catch_1
    move-exception p0

    .line 2086
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2089
    const/4 p0, 0x0

    goto :goto_0

    .line 2098
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #textPart:[B
    .restart local p2       #message:Ljava/lang/String;
    :cond_3
    move-object p1, p1

    .local p1, userData:[B
    move-object p2, p1

    .end local p1           #userData:[B
    .local p2, userData:[B
    goto :goto_3

    .line 2108
    .end local p4
    :cond_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2112
    const/4 p1, 0x7

    new-array p1, p1, [B

    .line 2114
    .local p1, timestamp:[B
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object p1

    .line 2116
    const/4 p3, 0x0

    array-length p4, p1

    .end local p3
    invoke-virtual {p0, p1, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2119
    array-length p1, p2

    .end local p1           #timestamp:[B
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2121
    const/4 p1, 0x0

    array-length p3, p2

    invoke-virtual {p0, p2, p1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 2078
    .local p2, message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :catch_2
    move-exception p1

    goto :goto_2
.end method

.method private static getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "Address"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1989
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1993
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 1994
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 2000
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2004
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2008
    .local v1, daBytes:[B
    if-nez v1, :cond_1

    .line 2010
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2018
    :goto_1
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2021
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2023
    return-object v0

    .line 1996
    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_0

    .line 2014
    .restart local v1       #daBytes:[B
    :cond_1
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_2

    move v3, v6

    :goto_2
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "header"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1823
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v10

    .line 1898
    :goto_0
    return-object v7

    .line 1827
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1829
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v2, 0x1

    .line 1831
    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1838
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 1840
    .local v6, userData:[B
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa0

    if-le v7, v8, :cond_2

    move-object v7, v10

    .line 1842
    goto :goto_0

    .line 1852
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1857
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v0, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v7, v3

    .line 1898
    goto :goto_0

    .line 1859
    .end local v6           #userData:[B
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1865
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string/jumbo v7, "utf-16be"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1873
    .local v4, textPart:[B
    if-eqz p3, :cond_3

    .line 1874
    array-length v7, p3

    array-length v8, v4

    add-int/2addr v7, v8

    new-array v6, v7, [B

    .line 1876
    .restart local v6       #userData:[B
    array-length v7, p3

    invoke-static {p3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1877
    array-length v7, p3

    array-length v8, v4

    invoke-static {v4, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1882
    :goto_2
    array-length v7, v6

    const/16 v8, 0x8c

    if-le v7, v8, :cond_4

    move-object v7, v10

    .line 1884
    goto :goto_0

    .line 1866
    .end local v4           #textPart:[B
    .end local v6           #userData:[B
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 1867
    .local v5, uex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Gsm/SmsMessage"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 1870
    goto :goto_0

    .line 1879
    .end local v5           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #textPart:[B
    :cond_3
    move-object v6, v4

    .restart local v6       #userData:[B
    goto :goto_2

    .line 1889
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1892
    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1894
    array-length v7, v6

    invoke-virtual {v0, v6, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method private static getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "Address"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1780
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1784
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 1785
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1791
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1794
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1798
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1802
    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_1

    move v3, v6

    :goto_1
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1807
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1810
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1812
    return-object v0

    .line 1787
    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_1
    move v3, v5

    .line 1802
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/16 v8, 0x8c

    const/4 v7, 0x0

    .line 736
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 737
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 738
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 739
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 741
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 742
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 744
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 746
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-le v5, v8, :cond_0

    .line 747
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    sub-int v7, v8, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v5, 0x0

    .line 775
    :goto_0
    return-object v5

    .line 752
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 753
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 760
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 765
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 768
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 769
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 772
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 774
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v5, v2

    .line 775
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 715
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 280
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 301
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 302
    :cond_0
    const/4 p0, 0x0

    .line 371
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .line 305
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 307
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v0, 0x40

    :goto_1
    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 308
    .local v0, mtiByte:B
    invoke-static {p0, p1, v0, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 313
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p5, :cond_2

    .line 315
    const/4 p5, 0x1

    .line 318
    :cond_2
    const/4 p1, 0x1

    if-ne p5, p1, :cond_4

    .line 319
    .end local p1
    :try_start_0
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 344
    .end local v0           #mtiByte:B
    .end local p3
    .local p1, userData:[B
    :goto_2
    const/4 p2, 0x1

    if-ne p5, p2, :cond_6

    .line 345
    .end local p2
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0xa0

    if-le p2, p3, :cond_5

    .line 347
    const/4 p0, 0x0

    goto :goto_0

    .line 307
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2
    .restart local p3
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 322
    .end local p1           #destinationAddress:Ljava/lang/String;
    .restart local v0       #mtiByte:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_1
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .local p1, userData:[B
    goto :goto_2

    .line 323
    .end local p1           #userData:[B
    :catch_0
    move-exception p1

    .line 324
    .local p1, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string p3, "Gsm/SmsMessage"

    .end local p3
    const-string v0, "Implausible UnsupportedEncodingException "

    .end local v0           #mtiByte:B
    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 327
    const/4 p0, 0x0

    goto :goto_0

    .line 330
    .end local p1           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception p1

    .line 334
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p1

    .line 335
    .local p1, userData:[B
    const/4 p5, 0x3

    goto :goto_2

    .line 336
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :catch_2
    move-exception p0

    .line 337
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    const/4 p0, 0x0

    goto :goto_0

    .line 357
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, userData:[B
    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 369
    :goto_3
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 370
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object p0, v1

    .line 371
    goto :goto_0

    .line 359
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_6
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x8c

    if-le p2, p3, :cond_7

    .line 361
    const/4 p0, 0x0

    goto :goto_0

    .line 365
    :cond_7
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 550
    const-string p7, "Gsm/SmsMessage"

    .end local p7
    const-string v0, "getSubmitPdu with Options"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 553
    :cond_0
    const/4 p0, 0x0

    .line 660
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_0
    return-object p0

    .line 555
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_1
    const-string p7, "Gsm/SmsMessage"

    const-string v0, "**getSubmitPdu_Options**"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string p7, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replyPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string p7, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encodingType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string p7, "Gsm/SmsMessage"

    const-string v0, "**********************"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 562
    .local v0, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 p7, 0x40

    :goto_1
    or-int/lit8 p7, p7, 0x1

    int-to-byte p7, p7

    .line 563
    .local p7, mtiByte:B
    if-eqz p5, :cond_a

    .line 565
    or-int/lit16 p5, p7, 0x80

    int-to-byte p5, p5

    .line 566
    .end local p7           #mtiByte:B
    .local p5, mtiByte:B
    const-string p7, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtiByte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_2
    const/16 p7, 0xff

    if-eq p6, p7, :cond_2

    .line 570
    or-int/lit8 p5, p5, 0x10

    int-to-byte p5, p5

    .line 571
    const-string p7, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtiByte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2
    invoke-static {p0, p1, p5, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 580
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 p1, 0x1

    if-ne p8, p1, :cond_4

    .line 582
    .end local p1
    :try_start_0
    new-instance p1, Lcom/android/internal/telephony/EncodeException;

    const-string p3, "Input Method is Unicode"

    .end local p3
    invoke-direct {p1, p3}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local p5           #mtiByte:B
    :catch_0
    move-exception p1

    .line 618
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string/jumbo p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 626
    .local p1, textPart:[B
    if-eqz p4, :cond_7

    .line 628
    array-length p2, p4

    .end local p2
    array-length p3, p1

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [B

    .line 630
    .local p2, userData:[B
    const/4 p3, 0x0

    array-length p5, p4

    int-to-byte p5, p5

    aput-byte p5, p2, p3

    .line 631
    const/4 p3, 0x0

    const/4 p5, 0x1

    array-length p7, p4

    invoke-static {p4, p3, p2, p5, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    const/4 p3, 0x0

    array-length p4, p4

    .end local p4
    add-int/lit8 p4, p4, 0x1

    array-length p5, p1

    invoke-static {p1, p3, p2, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 638
    .end local p2           #userData:[B
    .local p1, userData:[B
    :goto_3
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_8

    .line 640
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 562
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .local p2, message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .local p5, replyPath:Z
    :cond_3
    const/4 p7, 0x0

    goto :goto_1

    .line 587
    .end local p1           #destinationAddress:Ljava/lang/String;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p5, mtiByte:B
    :cond_4
    :try_start_2
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 589
    .local p1, userData:[B
    const/4 p3, 0x0

    aget-byte p3, p1, p3

    .end local p3
    and-int/lit16 p3, p3, 0xff

    const/16 p5, 0xa0

    if-le p3, p5, :cond_5

    .line 591
    .end local p5           #mtiByte:B
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 602
    :cond_5
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 605
    const/16 p3, 0xff

    if-eq p6, p3, :cond_6

    .line 607
    invoke-virtual {p0, p6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 608
    const-string p3, "Gsm/SmsMessage"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "expirty = "

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_6
    const/4 p3, 0x0

    array-length p5, p1

    invoke-virtual {p0, p1, p3, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 659
    .end local p2           #message:Ljava/lang/String;
    .end local p4
    :goto_4
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object p0, v0

    .line 660
    goto/16 :goto_0

    .line 619
    .end local p1           #userData:[B
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #message:Ljava/lang/String;
    .restart local p4
    :catch_1
    move-exception p0

    .line 620
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 635
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, textPart:[B
    .restart local p2       #message:Ljava/lang/String;
    :cond_7
    move-object p1, p1

    .local p1, userData:[B
    goto :goto_3

    .line 645
    .end local p2           #message:Ljava/lang/String;
    .end local p4
    :cond_8
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 648
    const/16 p2, 0xff

    if-eq p6, p2, :cond_9

    .line 650
    invoke-virtual {p0, p6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 651
    const-string p2, "Gsm/SmsMessage"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "expirty = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_9
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 656
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2       #message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .local p5, replyPath:Z
    .restart local p7       #mtiByte:B
    :cond_a
    move p5, p7

    .end local p7           #mtiByte:B
    .local p5, mtiByte:B
    goto/16 :goto_2
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 793
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 797
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 798
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 805
    :goto_0
    if-eqz p3, :cond_0

    .line 807
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 808
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS status report requested"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 813
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 821
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 826
    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_2

    move v3, v6

    :goto_1
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 830
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 833
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 834
    return-object v0

    .line 800
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v3, v5

    .line 826
    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 261
    .local v0, len:I
    const/4 v1, 0x0

    .line 263
    .local v1, smscLen:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 265
    sub-int v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 193
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 194
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 198
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 197
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 173
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 174
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 178
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 177
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 186
    const-string v0, "Gsm/SmsMessage"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2
    .parameter "p"

    .prologue
    .line 207
    const-string v0, "Gsm/SmsMessage"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method private parsePdu([B)V
    .locals 5
    .parameter "pdu"

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1448
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1450
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    .line 1452
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1453
    const-string v2, "Gsm/SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1462
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 1463
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 1479
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1467
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1481
    :goto_0
    return-void

    .line 1471
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1475
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Gsm/SmsMessage"

    .line 1572
    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1574
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1576
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1581
    :cond_0
    const-string v1, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "originatingAddress.address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1589
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1596
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 1598
    const-string v1, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS SC timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    move v0, v5

    .line 1602
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1603
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v4

    .line 1572
    goto :goto_0

    :cond_2
    move v0, v4

    .line 1600
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1490
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1493
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1495
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 1497
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1499
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 1501
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 1503
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1506
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1508
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1509
    .local v0, extraParams:I
    move v2, v0

    .line 1510
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1514
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v6

    .line 1493
    goto :goto_0

    .line 1517
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 1518
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1521
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 1522
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1525
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 1526
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5

    move v1, v5

    .line 1527
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1530
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v6

    .line 1526
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1534
    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1537
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 1540
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1542
    const-string v1, "Gsm/SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipientAddress.address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1551
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1556
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1565
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    move v0, v5

    .line 1567
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1569
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v4

    .line 1534
    goto :goto_0

    :cond_2
    move v0, v4

    .line 1565
    goto :goto_1
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/16 v11, 0xe0

    const/16 v10, 0xc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "Gsm/SmsMessage"

    .line 1613
    const/4 v3, 0x0

    .line 1614
    .local v3, hasMessageClass:Z
    const/4 v4, 0x0

    .line 1616
    .local v4, userDataCompressed:Z
    const/4 v2, 0x0

    .line 1619
    .local v2, encodingType:I
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0x84

    const/16 v6, 0x84

    if-ne v5, v6, :cond_1

    .line 1620
    const/4 v2, 0x4

    .line 1711
    :goto_0
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasUserDataHeader : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    if-ne v2, v8, :cond_f

    move v5, v8

    :goto_1
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1716
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userData:[B

    .line 1717
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1719
    packed-switch v2, :pswitch_data_0

    .line 1740
    :goto_2
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageBody : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1746
    :cond_0
    if-nez v3, :cond_10

    .line 1747
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 1764
    :goto_3
    return-void

    .line 1621
    .end local v1           #count:I
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_6

    .line 1623
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    move v5, v8

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1624
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    move v4, v8

    .line 1625
    :goto_5
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    move v3, v8

    .line 1627
    :goto_6
    if-eqz v4, :cond_5

    .line 1628
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :cond_2
    move v5, v7

    .line 1623
    goto :goto_4

    :cond_3
    move v4, v7

    .line 1624
    goto :goto_5

    :cond_4
    move v3, v7

    .line 1625
    goto :goto_6

    .line 1632
    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    .line 1634
    :pswitch_0
    const/4 v2, 0x1

    .line 1635
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1639
    :pswitch_1
    const/4 v2, 0x3

    .line 1640
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1644
    :pswitch_2
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1647
    const/4 v2, 0x2

    .line 1648
    goto/16 :goto_0

    .line 1651
    :pswitch_3
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1654
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 1659
    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_8

    .line 1660
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1661
    const/4 v3, 0x1

    .line 1662
    const/4 v4, 0x0

    .line 1663
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1665
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_7

    .line 1667
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1670
    :cond_7
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 1672
    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-eq v5, v10, :cond_9

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_9

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v11, :cond_e

    .line 1681
    :cond_9
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1683
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v11, :cond_a

    .line 1684
    const/4 v2, 0x3

    .line 1689
    :goto_7
    const/4 v4, 0x0

    .line 1690
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_b

    move v0, v8

    .line 1694
    .local v0, active:Z
    :goto_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_d

    .line 1695
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 1696
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    .line 1697
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v10, :cond_c

    move v5, v8

    :goto_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    goto/16 :goto_0

    .line 1686
    .end local v0           #active:Z
    :cond_a
    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    move v0, v7

    .line 1690
    goto :goto_8

    .restart local v0       #active:Z
    :cond_c
    move v5, v7

    .line 1697
    goto :goto_9

    .line 1699
    :cond_d
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 1701
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MWI for fax, email, or other "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1705
    .end local v0           #active:Z
    :cond_e
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :cond_f
    move v5, v7

    .line 1714
    goto/16 :goto_1

    .line 1722
    .restart local v1       #count:I
    :pswitch_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1726
    :pswitch_5
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1730
    :pswitch_6
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1734
    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataEUC_KR(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1749
    :cond_10
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_3

    .line 1751
    :pswitch_8
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1754
    :pswitch_9
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1757
    :pswitch_a
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1760
    :pswitch_b
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1632
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1749
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1422
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1383
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1387
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1393
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1397
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1403
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 1417
    :goto_0
    return v0

    .line 1407
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    move v0, v2

    .line 1414
    goto :goto_0

    .line 1417
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1370
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1427
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method
