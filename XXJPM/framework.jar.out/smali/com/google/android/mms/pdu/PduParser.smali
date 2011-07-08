.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 75
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 80
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 65
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 70
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 95
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 96
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 4
    .parameter "headers"

    .prologue
    .line 1711
    if-nez p0, :cond_0

    .line 1712
    const/4 p0, 0x0

    .line 1918
    .end local p0
    :goto_0
    return p0

    .line 1716
    .restart local p0
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 1719
    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1720
    .local v1, mmsVersion:I
    if-nez v1, :cond_1

    .line 1722
    const/4 p0, 0x0

    goto :goto_0

    .line 1726
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 1915
    const/4 p0, 0x0

    goto :goto_0

    .line 1729
    :pswitch_0
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1730
    .local v0, srContentType:[B
    if-nez v0, :cond_2

    .line 1731
    const/4 p0, 0x0

    goto :goto_0

    .line 1735
    :cond_2
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #srContentType:[B
    move-result-object v0

    .line 1736
    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_3

    .line 1737
    const/4 p0, 0x0

    goto :goto_0

    .line 1741
    :cond_3
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p0

    .line 1742
    .local p0, srTransactionId:[B
    if-nez p0, :cond_15

    .line 1743
    const/4 p0, 0x0

    goto :goto_0

    .line 1749
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_1
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1750
    .local v0, scResponseStatus:I
    if-nez v0, :cond_4

    .line 1751
    const/4 p0, 0x0

    goto :goto_0

    .line 1755
    :cond_4
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #scResponseStatus:I
    move-result-object p0

    .line 1756
    .local p0, scTransactionId:[B
    if-nez p0, :cond_15

    .line 1757
    const/4 p0, 0x0

    goto :goto_0

    .line 1763
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_2
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1764
    .local v0, niContentLocation:[B
    if-nez v0, :cond_5

    .line 1765
    const/4 p0, 0x0

    goto :goto_0

    .line 1769
    :cond_5
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niContentLocation:[B
    move-result-wide v0

    .line 1770
    .end local v1           #mmsVersion:I
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 1771
    .end local v0           #niExpiry:J
    const/4 p0, 0x0

    goto :goto_0

    .line 1775
    :cond_6
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1776
    .local v0, niMessageClass:[B
    if-nez v0, :cond_7

    .line 1777
    const/4 p0, 0x0

    goto :goto_0

    .line 1781
    :cond_7
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niMessageClass:[B
    move-result-wide v0

    .line 1782
    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    .line 1783
    .end local v0           #niMessageSize:J
    const/4 p0, 0x0

    goto :goto_0

    .line 1787
    :cond_8
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1788
    .local p0, niTransactionId:[B
    if-nez p0, :cond_15

    .line 1789
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1795
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_3
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1796
    .local v0, nriStatus:I
    if-nez v0, :cond_9

    .line 1797
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1801
    :cond_9
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #nriStatus:I
    move-result-object p0

    .line 1802
    .local p0, nriTransactionId:[B
    if-nez p0, :cond_15

    .line 1803
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1809
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1810
    .local v0, rcContentType:[B
    if-nez v0, :cond_a

    .line 1811
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1815
    :cond_a
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #rcContentType:[B
    move-result-wide v0

    .line 1816
    .end local v1           #mmsVersion:I
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_15

    .line 1817
    .end local p0           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1823
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_5
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1824
    .end local v1           #mmsVersion:I
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_b

    .line 1825
    .end local v0           #diDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1829
    :cond_b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1830
    .local v0, diMessageId:[B
    if-nez v0, :cond_c

    .line 1831
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1835
    :cond_c
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #diMessageId:[B
    move-result v0

    .line 1836
    .local v0, diStatus:I
    if-nez v0, :cond_d

    .line 1837
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1841
    :cond_d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #diStatus:I
    move-result-object p0

    .line 1842
    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1843
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1849
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object p0

    .line 1850
    .local p0, aiTransactionId:[B
    if-nez p0, :cond_15

    .line 1851
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1857
    .restart local v0       #messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1858
    .end local v1           #mmsVersion:I
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_e

    .line 1859
    .end local v0           #roDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1863
    :cond_e
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1864
    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_f

    .line 1865
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1869
    :cond_f
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1870
    .local v0, roMessageId:[B
    if-nez v0, :cond_10

    .line 1871
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1875
    :cond_10
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #roMessageId:[B
    move-result v0

    .line 1876
    .local v0, roReadStatus:I
    if-nez v0, :cond_11

    .line 1877
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1881
    :cond_11
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #roReadStatus:I
    move-result-object p0

    .line 1882
    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1883
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1889
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_8
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #messageType:I
    move-result-object v0

    .line 1890
    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_12

    .line 1891
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1895
    :cond_12
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1896
    .local v0, rrMessageId:[B
    if-nez v0, :cond_13

    .line 1897
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1901
    :cond_13
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #rrMessageId:[B
    move-result v0

    .line 1902
    .local v0, rrReadStatus:I
    if-nez v0, :cond_14

    .line 1903
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1907
    :cond_14
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #rrReadStatus:I
    move-result-object p0

    .line 1908
    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1909
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1918
    .end local v1           #mmsVersion:I
    .end local p0           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .parameter "part"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1675
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1676
    :cond_0
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_1

    move v2, v3

    .line 1701
    :goto_0
    return v2

    .line 1682
    :cond_1
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2

    .line 1683
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1684
    .local v0, contentId:[B
    if-eqz v0, :cond_2

    .line 1685
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2

    move v2, v4

    .line 1686
    goto :goto_0

    .line 1692
    .end local v0           #contentId:[B
    :cond_2
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_3

    .line 1693
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1694
    .local v1, contentType:[B
    if-eqz v1, :cond_3

    .line 1695
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_3

    move v2, v4

    .line 1696
    goto :goto_0

    .end local v1           #contentType:[B
    :cond_3
    move v2, v3

    .line 1701
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1148
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1149
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1150
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1151
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1114
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1115
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1116
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1117
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1118
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1120
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1121
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1122
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1130
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1131
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1125
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1126
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1134
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1135
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1138
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 1098
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    .line 1109
    :goto_0
    return v0

    .line 1102
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1109
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1106
    goto :goto_0

    .line 1102
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    .line 1054
    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    move v0, v1

    .line 1079
    :goto_0
    return v0

    .line 1058
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1079
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 1076
    goto :goto_0

    .line 1058
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 877
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 7
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1452
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1454
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .line 1455
    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1456
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1457
    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v2, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1458
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1460
    and-int/lit16 v1, v2, 0xff

    .line 1462
    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_8

    .line 1463
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1464
    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1465
    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1466
    .end local v1           #cur:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1467
    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-ne v1, v4, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1468
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1469
    and-int/lit16 v1, v4, 0xff

    .line 1471
    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_4

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_4

    .line 1472
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #contentType:[B
    move-result-object v0

    .line 1487
    .end local v1           #first:I
    .restart local v0       #contentType:[B
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1488
    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .line 1489
    .local v1, parameterLen:I
    if-lez v1, :cond_3

    .line 1490
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #length:I
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1493
    :cond_3
    if-gez v1, :cond_7

    .line 1494
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt MMS message"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .local v6, contentType:[B
    move-object v0, p0

    move-object p0, v6

    .line 1504
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .end local v6           #contentType:[B
    .local p0, contentType:[B
    :goto_1
    return-object v0

    .line 1473
    .restart local v0       #contentType:[B
    .local v1, first:I
    .restart local v2       #length:I
    .restart local v3       #startPos:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_4
    const/16 v5, 0x7f

    if-le v1, v5, :cond_6

    .line 1474
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1476
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #first:I
    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1477
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_0

    .line 1479
    .local v0, index:I
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1480
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #index:I
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_0

    .line 1483
    .restart local v1       #first:I
    :cond_6
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt content-type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .restart local v6       #contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v6           #contentType:[B
    .local p0, contentType:[B
    goto :goto_1

    .end local v2           #length:I
    .restart local v0       #contentType:[B
    .local v1, parameterLen:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_7
    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object p0, v0

    .end local v0           #contentType:[B
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .local p0, contentType:[B
    :goto_2
    move-object v0, p0

    .line 1504
    goto :goto_1

    .line 1497
    .restart local v0       #contentType:[B
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_8
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_9

    .line 1498
    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .local p1, temp:I
    goto :goto_2

    .line 1500
    .end local p1           #temp:I
    .restart local v0       #contentType:[B
    .restart local v2       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_9
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .restart local p1       #temp:I
    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 5
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1281
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1282
    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1284
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1285
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1286
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v3, v1

    .line 1287
    .end local v1           #tempPos:I
    .local v3, tempPos:I
    :goto_0
    if-lez v0, :cond_c

    .line 1288
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1289
    .local v1, param:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-ne v4, v1, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1290
    .restart local p0
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 1292
    sparse-switch v1, :sswitch_data_0

    .line 1423
    const/4 v1, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v1           #param:I
    move-result v4

    if-ne v1, v4, :cond_b

    .line 1424
    const-string v1, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    :goto_1
    move v3, v1

    .line 1430
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    goto :goto_0

    .line 1308
    .local v1, param:I
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1309
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1310
    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1311
    const/16 v1, 0x7f

    if-le v0, v1, :cond_4

    .line 1313
    .end local v1           #param:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1315
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1316
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1317
    .local v0, type:[B
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    .end local v0           #type:[B
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1330
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1331
    .local v0, lastLen:I
    goto :goto_1

    .line 1323
    .end local v1           #tempPos:I
    .local v0, first:I
    .restart local v3       #tempPos:I
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .line 1324
    .local v0, type:[B
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1325
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1348
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1349
    .local v0, start:[B
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 1350
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1354
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #start:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1355
    .local v0, lastLen:I
    goto :goto_1

    .line 1372
    .local v1, param:I
    .restart local v3       #tempPos:I
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1373
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1374
    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1376
    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    .end local v1           #param:I
    const/16 v1, 0x7f

    if-lt v0, v1, :cond_7

    :cond_6
    if-nez v0, :cond_9

    .line 1379
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #firstValue:I
    move-result-object v1

    .line 1381
    .local v1, charsetStr:[B
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .line 1383
    .local v0, charsetInt:I
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3           #tempPos:I
    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charsetInt:I
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    .end local v1           #charsetStr:[B
    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1398
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1399
    .local v0, lastLen:I
    goto/16 :goto_1

    .line 1384
    .end local v0           #lastLen:I
    .local v1, charsetStr:[B
    :catch_0
    move-exception v0

    .line 1386
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PduParser"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1           #charsetStr:[B
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1391
    .local v0, firstValue:I
    .restart local v3       #tempPos:I
    :cond_9
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0           #firstValue:I
    long-to-int v0, v0

    .line 1392
    .local v0, charset:I
    if-eqz p1, :cond_8

    .line 1393
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charset:I
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1411
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1412
    .local v0, name:[B
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 1413
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1417
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #name:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1418
    .local v0, lastLen:I
    goto/16 :goto_1

    .line 1426
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_b
    const/4 v0, 0x0

    move v1, v3

    .end local v3           #tempPos:I
    .restart local v1       #tempPos:I
    goto/16 :goto_1

    .line 1432
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_c
    if-eqz v0, :cond_d

    .line 1433
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Content-Type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_d
    return-void

    .line 1292
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 8
    .parameter "pduDataStream"

    .prologue
    .line 953
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 954
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 955
    const/4 v3, 0x0

    .line 956
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 957
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 958
    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 959
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 961
    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 962
    const/16 v7, 0x20

    if-ge v2, v7, :cond_2

    .line 963
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 965
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 968
    :cond_2
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 971
    .local v6, textString:[B
    if-eqz v0, :cond_3

    .line 972
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    move-object v7, v3

    .line 980
    :goto_1
    return-object v7

    .line 974
    :cond_3
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_0

    .line 976
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 977
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .parameter "pduDataStream"

    .prologue
    .line 1223
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1224
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1225
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1226
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1227
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1228
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1229
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1231
    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1191
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1192
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1193
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1194
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1196
    .local v0, count:I
    if-le v0, v8, :cond_2

    .line 1197
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1200
    :cond_2
    const-wide/16 v2, 0x0

    .line 1202
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1203
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1204
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1205
    :cond_3
    shl-long/2addr v2, v8

    .line 1206
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1209
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 6
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1517
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1518
    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1519
    .restart local p0
    :cond_1
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gtz p2, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1537
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1538
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1539
    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v3, v1

    .end local v1           #tempPos:I
    .local v3, tempPos:I
    move v1, v0

    .line 1540
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    :goto_0
    if-lez v1, :cond_10

    .line 1541
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1542
    .local v0, header:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-ne v4, v0, :cond_3

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1543
    .restart local p0
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 1545
    const/16 v4, 0x7f

    if-le v0, v4, :cond_c

    .line 1547
    sparse-switch v0, :sswitch_data_0

    .line 1626
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_b

    .line 1627
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .line 1664
    .end local v1           #lastLen:I
    .local p0, lastLen:I
    :goto_1
    return p1

    .line 1553
    .restart local v0       #header:I
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1554
    .local v0, contentLocation:[B
    if-eqz v0, :cond_4

    .line 1555
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1558
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1559
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    :goto_2
    move v3, v1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    move v1, v0

    .line 1657
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    goto :goto_0

    .line 1566
    .local v0, header:I
    :sswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1567
    .local v0, contentId:[B
    if-eqz v0, :cond_5

    .line 1568
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1571
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1572
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1573
    .local v0, lastLen:I
    goto :goto_2

    .line 1584
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :sswitch_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1585
    .local v0, len:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1586
    .end local v1           #lastLen:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1587
    .local v4, thisStartPos:I
    const/4 v1, 0x0

    .line 1588
    .local v1, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1590
    .local v3, value:I
    const/16 v1, 0x80

    if-ne v3, v1, :cond_8

    .line 1591
    .end local v1           #thisEndPos:I
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1603
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1604
    .restart local v1       #thisEndPos:I
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_12

    .line 1605
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1606
    .end local v3           #value:I
    .local v5, value:I
    const/16 v1, 0x98

    if-ne v5, v1, :cond_6

    .line 1607
    .end local v1           #thisEndPos:I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1611
    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1612
    .local v3, thisEndPos:I
    sub-int v1, v4, v3

    if-ge v1, v0, :cond_7

    .line 1613
    sub-int v1, v4, v3

    sub-int/2addr v0, v1

    .line 1614
    .local v0, last:I
    new-array v1, v0, [B

    .line 1615
    .local v1, temp:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0           #last:I
    .end local v1           #temp:[B
    .end local v4           #thisStartPos:I
    :cond_7
    move v1, v5

    .end local v5           #value:I
    .local v1, value:I
    move v0, v3

    .line 1619
    .end local v3           #thisEndPos:I
    .local v0, thisEndPos:I
    :goto_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1620
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1621
    .local v0, lastLen:I
    goto :goto_2

    .line 1592
    .end local v1           #tempPos:I
    .local v0, len:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    :cond_8
    const/16 v1, 0x81

    if-ne v3, v1, :cond_9

    .line 1593
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 1594
    :cond_9
    const/16 v1, 0x82

    if-ne v3, v1, :cond_a

    .line 1595
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 1597
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1599
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 1630
    .end local v0           #len:I
    .end local v4           #thisStartPos:I
    .local v1, lastLen:I
    .local v3, tempPos:I
    :cond_b
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .line 1633
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_c
    const/16 v4, 0x20

    if-lt v0, v4, :cond_e

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_e

    .line 1635
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1636
    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1           #lastLen:I
    move-result-object v1

    .line 1639
    .local v1, tempValue:[B
    const/4 v3, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v3           #tempPos:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #tempHeader:[B
    if-ne v3, v0, :cond_d

    .line 1641
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1644
    :cond_d
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1645
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1646
    .local v0, lastLen:I
    goto/16 :goto_2

    .line 1651
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_e
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_f

    .line 1652
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .line 1655
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_f
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .line 1659
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_10
    if-eqz v1, :cond_11

    .line 1660
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .line 1664
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_11
    const/4 p0, 0x1

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .local v0, len:I
    .local v1, thisEndPos:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_12
    move v0, v1

    .end local v1           #thisEndPos:I
    .local v0, thisEndPos:I
    move v1, v3

    .end local v3           #value:I
    .local v1, value:I
    goto/16 :goto_4

    .line 1547
    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;
    .locals 9
    .parameter "pduDataStream"
    .parameter "contType"

    .prologue
    .line 736
    if-nez p0, :cond_0

    .line 737
    const/4 p0, 0x0

    .line 865
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 740
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .line 741
    .local v1, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 743
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 744
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string p1, "application/vnd.wap.multipart.mixed"

    .end local p1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 747
    :cond_1
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 749
    const/4 p1, 0x0

    .local p1, i:I
    move v4, p1

    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local p1           #i:I
    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_d

    .line 750
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 751
    .local v3, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 752
    .local v2, dataLength:I
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 753
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 754
    .local v7, startPos:I
    if-gtz v7, :cond_2

    .line 756
    const/4 p0, 0x0

    goto :goto_0

    .line 760
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 761
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object p1

    .line 762
    .local p1, contentType:[B
    if-eqz p1, :cond_5

    .line 763
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 769
    .end local p1           #contentType:[B
    :goto_2
    const/16 p1, 0x97

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    .line 770
    .local p1, name:[B
    if-eqz p1, :cond_3

    .line 771
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 775
    :cond_3
    const/16 p1, 0x81

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p1           #name:[B
    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 776
    .local p1, charset:Ljava/lang/Integer;
    if-eqz p1, :cond_4

    .line 777
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1           #charset:Ljava/lang/Integer;
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 781
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    .line 782
    .local p1, endPos:I
    sub-int p1, v7, p1

    sub-int p1, v3, p1

    .line 783
    .local p1, partHeaderLen:I
    if-lez p1, :cond_6

    .line 784
    invoke-static {p0, v6, p1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result p1

    .end local p1           #partHeaderLen:I
    if-nez p1, :cond_7

    .line 786
    const/4 p0, 0x0

    goto :goto_0

    .line 765
    .local p1, contentType:[B
    :cond_5
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local p1           #contentType:[B
    const/4 v8, 0x0

    aget-object p1, p1, v8

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 788
    .local p1, partHeaderLen:I
    :cond_6
    if-gez p1, :cond_7

    .line 790
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 796
    .end local p1           #partHeaderLen:I
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object p1

    if-nez p1, :cond_8

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .end local v7           #startPos:I
    invoke-static {v7, v8}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 805
    :cond_8
    if-lez v2, :cond_b

    .line 806
    new-array v3, v2, [B

    .line 807
    .local v3, partData:[B
    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 809
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v2

    .line 810
    .local v2, partDataEncoding:[B
    if-eqz v2, :cond_10

    .line 811
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    .line 812
    .local p1, encoding:Ljava/lang/String;
    const-string v2, "base64"

    .end local v2           #partDataEncoding:[B
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 814
    invoke-static {v3}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object p1

    .line 822
    .end local v3           #partData:[B
    .local p1, partData:[B
    :goto_3
    if-nez p1, :cond_a

    .line 823
    const-string p0, "Decode part data error!"

    .end local p0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 824
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 815
    .restart local v3       #partData:[B
    .restart local p0
    .local p1, encoding:Ljava/lang/String;
    :cond_9
    const-string v2, "quoted-printable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .end local p1           #encoding:Ljava/lang/String;
    if-eqz p1, :cond_10

    .line 817
    invoke-static {v3}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object p1

    .end local v3           #partData:[B
    .local p1, partData:[B
    goto :goto_3

    .line 826
    :cond_a
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 830
    .end local p1           #partData:[B
    :cond_b
    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result p1

    if-nez p1, :cond_c

    .line 832
    const/4 p1, 0x0

    invoke-virtual {v0, p1, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 749
    :goto_4
    add-int/lit8 p1, v4, 0x1

    .end local v4           #i:I
    .local p1, i:I
    move v4, p1

    .end local p1           #i:I
    .restart local v4       #i:I
    goto/16 :goto_1

    .line 835
    :cond_c
    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4

    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_d
    move p0, v1

    .end local v1           #count:I
    .end local v4           #i:I
    .local p0, count:I
    :goto_5
    move-object p0, v0

    .line 865
    goto/16 :goto_0

    .line 840
    .restart local v1       #count:I
    .local v2, ctTypeStr:Ljava/lang/String;
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_e
    const-string/jumbo p1, "text/plain"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 842
    new-instance p1, Ljava/lang/String;

    const-string v2, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    .end local v2           #ctTypeStr:Ljava/lang/String;
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 847
    .local p1, smilDoc:Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 848
    .local v2, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string/jumbo v3, "smil.txt"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 849
    const-string/jumbo v3, "smil.txt"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 850
    const-string v3, "application/smil"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 851
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .end local p1           #smilDoc:Ljava/lang/String;
    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 852
    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 854
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    .end local v2           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 855
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    const-string p1, "attach.txt"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 856
    const-string p1, "attach.txt"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 857
    const-string/jumbo p1, "text/plain"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 858
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    .line 859
    .local p1, dataLength:I
    new-array v3, p1, [B

    .line 860
    .restart local v3       #partData:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 861
    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 862
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v3           #partData:[B
    .end local p1           #dataLength:I
    :cond_f
    move p0, v1

    .end local v1           #count:I
    .local p0, count:I
    goto :goto_5

    .restart local v1       #count:I
    .restart local v3       #partData:[B
    .restart local v4       #i:I
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v6       #part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_10
    move-object p1, v3

    .end local v3           #partData:[B
    .local p1, partData:[B
    goto/16 :goto_3
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1168
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1169
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1170
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1171
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 891
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 892
    :cond_0
    const/4 v0, 0x0

    .line 893
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 894
    .local v1, temp:I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 910
    :goto_0
    return v2

    .line 898
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 899
    shl-int/lit8 v0, v0, 0x7

    .line 900
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 901
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 902
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 903
    goto :goto_0

    .line 907
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 908
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 910
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    .line 928
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 929
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 930
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 931
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 933
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    move v2, v0

    .line 936
    :goto_0
    return v2

    .line 935
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 936
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_0

    .line 939
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 992
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1010
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1013
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1014
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1015
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1018
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1033
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1019
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1022
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1025
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1243
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1244
    :cond_0
    new-array v0, p1, [B

    .line 1245
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1246
    .local v1, readLen:I
    if-ge v1, p1, :cond_1

    .line 1247
    const/4 v2, -0x1

    .line 1249
    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 19

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 106
    const/16 v16, 0x0

    .line 203
    :goto_0
    return-object v16

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 113
    const/16 v16, 0x0

    goto :goto_0

    .line 117
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const/16 v17, 0x8c

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 123
    .local v8, messageType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const/16 v17, 0x84

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 126
    .local v4, contType:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 127
    const-string v16, "check mandatory headers failed!"

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 128
    const/16 v16, 0x0

    goto :goto_0

    .line 131
    :cond_2
    const/16 v16, 0x80

    move/from16 v0, v16

    move v1, v8

    if-eq v0, v1, :cond_3

    const/16 v16, 0x84

    move/from16 v0, v16

    move v1, v8

    if-ne v0, v1, :cond_5

    .line 135
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 139
    const/16 v16, 0x0

    goto :goto_0

    .line 142
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    .line 143
    .local v6, ctTypeStr:Ljava/lang/String;
    const-string/jumbo v16, "text/plain"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const-string v17, "application/vnd.wap.multipart.mixed"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x84

    invoke-virtual/range {v16 .. v18}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 151
    .end local v6           #ctTypeStr:Ljava/lang/String;
    :cond_5
    packed-switch v8, :pswitch_data_0

    .line 202
    const-string v16, "Parser doesn\'t support this message type in this version!"

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 203
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 153
    :pswitch_0
    new-instance v15, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v15, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v16, v15

    .line 154
    goto/16 :goto_0

    .line 156
    .end local v15           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v14, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v14, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object/from16 v16, v14

    .line 157
    goto/16 :goto_0

    .line 159
    .end local v14           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v9, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v9, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v16, v9

    .line 161
    goto/16 :goto_0

    .line 163
    .end local v9           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v10, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object/from16 v16, v10

    .line 165
    goto/16 :goto_0

    .line 167
    .end local v10           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v13, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 170
    .local v13, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v5

    .line 171
    .local v5, contentType:[B
    if-nez v5, :cond_6

    .line 172
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 174
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 176
    .restart local v6       #ctTypeStr:Ljava/lang/String;
    const-string v16, "application/vnd.wap.multipart.mixed"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string v16, "application/vnd.wap.multipart.related"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string/jumbo v16, "text/plain"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    :cond_7
    move-object/from16 v16, v13

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 186
    .end local v5           #contentType:[B
    .end local v6           #ctTypeStr:Ljava/lang/String;
    .end local v13           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v7, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object/from16 v16, v7

    .line 188
    goto/16 :goto_0

    .line 190
    .end local v7           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v3, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object/from16 v16, v3

    .line 192
    goto/16 :goto_0

    .line 194
    .end local v3           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v11, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object/from16 v16, v11

    .line 196
    goto/16 :goto_0

    .line 198
    .end local v11           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v12, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v12, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object/from16 v16, v12

    .line 200
    goto/16 :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 31
    .parameter "pduDataStream"

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const/16 v27, 0x0

    .line 725
    .end local p0
    :goto_0
    return-object v27

    .line 218
    .restart local p0
    :cond_0
    const/4 v12, 0x1

    .line 219
    .local v12, keepParsing:Z
    new-instance v11, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 221
    .end local p0
    .local v11, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_1
    :goto_1
    if-eqz v12, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v27

    if-lez v27, :cond_d

    .line 222
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 223
    .local v10, headerField:I
    packed-switch v10, :pswitch_data_0

    .line 720
    :pswitch_0
    const-string v27, "Unknown header"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 227
    .local v16, messageType:I
    packed-switch v16, :pswitch_data_1

    .line 247
    :try_start_0
    move-object v0, v11

    move/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 248
    :catch_0
    move-exception v6

    .line 249
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 251
    const/16 v27, 0x0

    goto :goto_0

    .line 244
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/16 v27, 0x0

    goto :goto_0

    .line 252
    :catch_1
    move-exception v6

    .line 253
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 254
    const/16 v27, 0x0

    goto :goto_0

    .line 287
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v16           #messageType:I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 290
    .local v24, value:I
    :try_start_1
    move-object v0, v11

    move/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 291
    :catch_2
    move-exception v6

    .line 292
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 294
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 295
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v6

    .line 296
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 297
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 308
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 309
    .local v24, value:J
    move-object v0, v11

    move-wide/from16 v1, v24

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 310
    .end local v24           #value:J
    :catch_4
    move-exception v27

    move-object/from16 v6, v27

    .line 311
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 312
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 323
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 324
    .restart local v24       #value:J
    move-object v0, v11

    move-wide/from16 v1, v24

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 325
    .end local v24           #value:J
    :catch_5
    move-exception v27

    move-object/from16 v6, v27

    .line 326
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 327
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 353
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v24

    .line 354
    .local v24, value:[B
    if-eqz v24, :cond_1

    .line 356
    :try_start_4
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 357
    :catch_6
    move-exception v6

    .line 358
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 359
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_7
    move-exception v6

    .line 360
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 361
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 377
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 379
    .local v24, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_1

    .line 381
    :try_start_5
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 382
    :catch_8
    move-exception v6

    .line 383
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 384
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v6

    .line 385
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 386
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 397
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 399
    .restart local v24       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_1

    .line 400
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 401
    .local v4, address:[B
    if-eqz v4, :cond_3

    .line 402
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 403
    .local v20, str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 404
    .local v7, endIndex:I
    if-lez v7, :cond_2

    .line 405
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 408
    :cond_2
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 416
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_3
    :try_start_7
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 417
    :catch_a
    move-exception v6

    .line 418
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_b
    move-exception v27

    move-object/from16 v6, v27

    .line 410
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 411
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 419
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :catch_c
    move-exception v6

    .line 420
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 421
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 434
    .end local v4           #address:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 437
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .line 442
    .local v23, token:I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v21

    .line 447
    .local v21, timeValue:J
    const/16 v27, 0x81

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    add-long v21, v21, v27

    .line 454
    :cond_4
    :try_start_9
    move-object v0, v11

    move-wide/from16 v1, v21

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 455
    :catch_d
    move-exception v6

    .line 456
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 457
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 443
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v21           #timeValue:J
    :catch_e
    move-exception v6

    .line 444
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 445
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 467
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v23           #token:I
    :pswitch_a
    const/4 v8, 0x0

    .line 468
    .local v8, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 471
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 474
    .local v9, fromToken:I
    const/16 v27, 0x80

    move/from16 v0, v27

    move v1, v9

    if-ne v0, v1, :cond_7

    .line 476
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 477
    if-eqz v8, :cond_6

    .line 478
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 479
    .restart local v4       #address:[B
    if-eqz v4, :cond_6

    .line 480
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 481
    .restart local v20       #str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 482
    .restart local v7       #endIndex:I
    if-lez v7, :cond_5

    .line 483
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 486
    :cond_5
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 504
    .end local v4           #address:[B
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_6
    :goto_2
    const/16 v27, 0x89

    :try_start_b
    move-object v0, v11

    move-object v1, v8

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 505
    :catch_f
    move-exception v6

    .line 506
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 487
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v4       #address:[B
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_10
    move-exception v27

    move-object/from16 v6, v27

    .line 488
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 489
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 495
    .end local v4           #address:[B
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_7
    :try_start_c
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v27, "insert-address-token"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .line 497
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_11
    move-exception v27

    move-object/from16 v6, v27

    .line 498
    .restart local v6       #e:Ljava/lang/NullPointerException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 499
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 507
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v6

    .line 508
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 509
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 516
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #fromToken:I
    :pswitch_b
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 517
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    .line 519
    .local v14, messageClass:I
    const/16 v27, 0x80

    move v0, v14

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 522
    const/16 v27, 0x80

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_8

    .line 523
    :try_start_d
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 539
    :catch_13
    move-exception v27

    move-object/from16 v6, v27

    .line 540
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 526
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_8
    const/16 v27, 0x81

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_9

    .line 527
    :try_start_e
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 541
    :catch_14
    move-exception v27

    move-object/from16 v6, v27

    .line 542
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 543
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 530
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_9
    const/16 v27, 0x82

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_a

    .line 531
    :try_start_f
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 534
    :cond_a
    const/16 v27, 0x83

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_1

    .line 535
    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    .line 547
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 548
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 549
    .local v15, messageClassString:[B
    if-eqz v15, :cond_1

    .line 551
    const/16 v27, 0x8a

    :try_start_10
    move-object v0, v11

    move-object v1, v15

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    .line 552
    :catch_15
    move-exception v6

    .line 553
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 554
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_16
    move-exception v6

    .line 555
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 556
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 564
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v14           #messageClass:I
    .end local v15           #messageClassString:[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 567
    .local v26, version:I
    const/16 v27, 0x8d

    :try_start_11
    move-object v0, v11

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    .line 568
    :catch_17
    move-exception v6

    .line 569
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 571
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 572
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v6

    .line 573
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 574
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 583
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #version:I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 587
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 594
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 596
    .local v19, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v19, :cond_1

    .line 598
    const/16 v27, 0xa0

    :try_start_13
    move-object v0, v11

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    .line 600
    :catch_19
    move-exception v6

    .line 601
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 588
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1a
    move-exception v6

    .line 589
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 590
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 602
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v19       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v6

    .line 603
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 604
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 614
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 618
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 626
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    .line 627
    .local v17, perviouslySentDate:J
    const/16 v27, 0xa1

    move-object v0, v11

    move-wide/from16 v1, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .line 629
    .end local v17           #perviouslySentDate:J
    :catch_1c
    move-exception v27

    move-object/from16 v6, v27

    .line 630
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 631
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 619
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v6

    .line 620
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 621
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 644
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 647
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 650
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 663
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 666
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 670
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    .line 671
    :catch_1e
    move-exception v6

    .line 672
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 673
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 682
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 690
    :pswitch_12
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 692
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 695
    .local v5, contentType:[B
    if-eqz v5, :cond_c

    .line 697
    const/16 v27, 0x84

    :try_start_17
    move-object v0, v11

    move-object v1, v5

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    .line 707
    :cond_c
    :goto_3
    const/16 v27, 0x99

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 710
    const/16 v27, 0x83

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 712
    const/4 v12, 0x0

    .line 713
    goto/16 :goto_1

    .line 698
    :catch_1f
    move-exception v6

    .line 699
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 700
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_20
    move-exception v6

    .line 701
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 702
    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v5           #contentType:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v10           #headerField:I
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_d
    move-object/from16 v27, v11

    .line 725
    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 227
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
