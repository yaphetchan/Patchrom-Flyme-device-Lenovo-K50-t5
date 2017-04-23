.class public final Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;
.super Ljava/lang/Object;
.source "BearerDataInterfaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BearerDataInterfaces 1.0"

.field private static final UNENCODABLE_7_BIT_CHAR:B = 0x20t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 9
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z

    .prologue
    const/16 v8, 0xa0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 94
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v1

    .line 95
    .local v1, "septets":I
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "force7BitEncoding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calcTextEncodingDetails : result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eq v1, v7, :cond_0

    if-gt v1, v8, :cond_0

    .line 99
    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 100
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 101
    iput v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 102
    rsub-int v3, v1, 0xa0

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 103
    iput v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 127
    :goto_0
    return-object v2

    .line 104
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    if-eq v1, v7, :cond_1

    if-le v1, v8, :cond_1

    .line 106
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    const-string/jumbo v4, "septets > 160 , it is a long 7bit messages "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .restart local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_0

    .line 112
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    const-string/jumbo v4, "encode text with unicode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 114
    .restart local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 115
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v0, v3, 0x2

    .line 116
    .local v0, "octets":I
    const/16 v3, 0x8c

    if-le v0, v3, :cond_2

    .line 117
    add-int/lit16 v3, v0, 0x85

    div-int/lit16 v3, v3, 0x86

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 119
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v3, v3, 0x86

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 125
    :goto_1
    const/4 v3, 0x3

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 122
    :cond_2
    iput v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 123
    rsub-int v3, v0, 0x8c

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1
.end method

.method public static calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    .locals 11
    .param p0, "header"    # Lcom/android/internal/telephony/SmsHeader;
    .param p1, "encodingType"    # I

    .prologue
    const/4 v10, 0x0

    .line 168
    if-nez p0, :cond_0

    .line 170
    return-object v10

    .line 173
    :cond_0
    const/4 v3, 0x0

    .line 174
    .local v3, "lengthOfHeader":I
    invoke-static {p0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v2

    .line 175
    .local v2, "headerBytes":[B
    if-eqz v2, :cond_1

    .line 176
    array-length v3, v2

    .line 179
    :cond_1
    if-gtz v3, :cond_2

    .line 180
    const-string/jumbo v7, "BearerDataInterfaces 1.0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error: SmsHeader != null, but we got length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v10

    .line 185
    :cond_2
    add-int/lit8 v6, v3, 0x1

    .line 186
    .local v6, "wholeLength":I
    mul-int/lit8 v0, v6, 0x8

    .line 187
    .local v0, "allbits":I
    const/4 v1, 0x0

    .line 188
    .local v1, "fields":I
    const/4 v4, 0x0

    .line 189
    .local v4, "numFields":I
    const/4 v5, 0x0

    .line 191
    .local v5, "skipBits":I
    packed-switch p1, :pswitch_data_0

    .line 218
    :pswitch_0
    const-string/jumbo v7, "BearerDataInterfaces 1.0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error: not supported msg encoding type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    new-instance v7, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    invoke-direct {v7, v3, v6, v4, v5}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;-><init>(IIII)V

    return-object v7

    .line 193
    :pswitch_1
    move v4, v6

    .line 194
    const/4 v5, 0x0

    .line 195
    goto :goto_0

    .line 198
    :pswitch_2
    div-int/lit8 v1, v0, 0x7

    .line 199
    rem-int/lit8 v7, v0, 0x7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 200
    :goto_1
    mul-int/lit8 v7, v4, 0x7

    sub-int v5, v7, v0

    .line 201
    goto :goto_0

    .line 199
    :cond_3
    move v4, v1

    goto :goto_1

    .line 204
    :pswitch_3
    div-int/lit8 v1, v0, 0x10

    .line 205
    rem-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    add-int/lit8 v4, v1, 0x1

    .line 206
    :goto_2
    mul-int/lit8 v7, v4, 0x10

    sub-int v5, v7, v0

    .line 207
    goto :goto_0

    .line 205
    :cond_4
    move v4, v1

    goto :goto_2

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static cdmaIntToBcdByte(I)B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 424
    .local v0, "ret":B
    rem-int/lit8 p0, p0, 0x64

    .line 426
    div-int/lit8 v1, p0, 0xa

    shl-int/lit8 v1, v1, 0x4

    rem-int/lit8 v2, p0, 0xa

    or-int/2addr v1, v2

    int-to-byte v0, v1

    .line 428
    .local v0, "ret":B
    return v0
.end method

.method public static decode7bitAscii([BII)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 444
    move v2, p1

    .line 445
    .local v2, "headerDataBytesLen":I
    mul-int/lit8 v3, v2, 0x8

    .line 446
    .local v3, "headerHoldBitsNum":I
    :try_start_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 447
    .local v8, "strBuf":Ljava/lang/StringBuffer;
    new-instance v6, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v6, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 448
    .local v6, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v9, p2, 0x7

    .line 449
    .local v9, "wantedBits":I
    invoke-virtual {v6}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v10

    if-ge v10, v9, :cond_0

    .line 450
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "insufficient data (wanted "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 451
    const-string/jumbo v12, " bits, but only have "

    .line 450
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 451
    invoke-virtual {v6}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v12

    .line 450
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 451
    const-string/jumbo v12, ")"

    .line 450
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v6    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v8    # "strBuf":Ljava/lang/StringBuffer;
    .end local v9    # "wantedBits":I
    :catch_0
    move-exception v1

    .line 496
    .local v1, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "7bit ASCII decode failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 456
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v6    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v8    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v9    # "wantedBits":I
    :cond_0
    if-lez v3, :cond_1

    .line 458
    :try_start_1
    invoke-virtual {v6, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 460
    const/4 v4, 0x0

    .line 461
    .local v4, "headerHoldFields":I
    const/4 v7, 0x0

    .line 466
    .local v7, "needSkipBits":I
    rem-int/lit8 v10, v3, 0x7

    if-eqz v10, :cond_2

    .line 467
    div-int/lit8 v10, v3, 0x7

    add-int/lit8 v4, v10, 0x1

    .line 468
    rem-int/lit8 v10, v3, 0x7

    rsub-int/lit8 v7, v10, 0x7

    .line 475
    :goto_0
    invoke-virtual {v6, v7}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 477
    sub-int/2addr p2, v4

    .line 480
    .end local v4    # "headerHoldFields":I
    .end local v7    # "needSkipBits":I
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, p2, :cond_6

    .line 481
    const/4 v10, 0x7

    invoke-virtual {v6, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 482
    .local v0, "charCode":I
    const/16 v10, 0x20

    if-lt v0, v10, :cond_3

    .line 483
    sget v10, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v0, v10, :cond_3

    .line 484
    sget-object v10, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v11, v0, -0x20

    aget-char v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 470
    .end local v0    # "charCode":I
    .end local v5    # "i":I
    .restart local v4    # "headerHoldFields":I
    .restart local v7    # "needSkipBits":I
    :cond_2
    div-int/lit8 v4, v3, 0x7

    .line 472
    const/4 v7, 0x0

    goto :goto_0

    .line 485
    .end local v4    # "headerHoldFields":I
    .end local v7    # "needSkipBits":I
    .restart local v0    # "charCode":I
    .restart local v5    # "i":I
    :cond_3
    const/16 v10, 0xa

    if-ne v0, v10, :cond_4

    .line 486
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 487
    :cond_4
    const/16 v10, 0xd

    if-ne v0, v10, :cond_5

    .line 488
    const/16 v10, 0xd

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 491
    :cond_5
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 494
    .end local v0    # "charCode":I
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    return-object v10
.end method

.method public static decodeUtf16([BII)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 513
    move v4, p1

    .line 514
    .local v4, "headerDataBytesLen":I
    mul-int/lit8 v0, v4, 0x8

    .line 515
    .local v0, "allHeaderDataBits":I
    div-int/lit8 v3, v0, 0x10

    .line 516
    .local v3, "fields":I
    rem-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 519
    .local v5, "headerDataFields":I
    :goto_0
    sub-int/2addr p2, v5

    .line 520
    mul-int/lit8 v1, p2, 0x2

    .line 522
    .local v1, "byteCount":I
    const-string/jumbo v6, "BearerDataInterfaces 1.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "decodeUtf16, offset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", numFields = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 523
    const-string/jumbo v8, ", data.length = "

    .line 522
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 523
    array-length v8, p0

    .line 522
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    if-ltz v1, :cond_0

    add-int v6, v1, p1

    array-length v7, p0

    if-le v6, v7, :cond_2

    .line 526
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v7, "UTF-16 decode failed: offset or length out of range"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 516
    .end local v1    # "byteCount":I
    .end local v5    # "headerDataFields":I
    :cond_1
    move v5, v3

    .restart local v5    # "headerDataFields":I
    goto :goto_0

    .line 529
    .restart local v1    # "byteCount":I
    :cond_2
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "utf-16be"

    invoke-direct {v6, p0, p1, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 530
    :catch_0
    move-exception v2

    .line 531
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UTF-16 decode failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static encode7bitAscii(Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)[B
    .locals 11
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .param p2, "header"    # Lcom/android/internal/telephony/SmsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 278
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 280
    .local v3, "length":I
    const/4 v7, 0x2

    .line 279
    invoke-static {p2, v7}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    move-result-object v6

    .line 282
    .local v6, "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    if-eqz v6, :cond_0

    .line 283
    iget v7, v6, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    add-int/2addr v3, v7

    .line 286
    :cond_0
    const-string/jumbo v7, "BearerDataInterfaces 1.0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "encode7bitAscii: length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and header = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v5, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-direct {v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 288
    .local v5, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 291
    .local v4, "msgLen":I
    if-eqz p2, :cond_1

    .line 292
    invoke-static {p2, v6, v5}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->encodeUserdataHeader(Lcom/android/internal/telephony/SmsHeader;Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 296
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 297
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 298
    .local v0, "charCode":I
    if-ne v0, v10, :cond_3

    .line 299
    if-eqz p1, :cond_2

    .line 300
    const/16 v7, 0x20

    const/4 v8, 0x7

    invoke-virtual {v5, v8, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 296
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_2
    const-string/jumbo v7, "BearerDataInterfaces 1.0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 303
    const-string/jumbo v9, ", cannot ASCII encode ("

    .line 302
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 303
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 302
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 303
    const-string/jumbo v9, ")"

    .line 302
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot ASCII encode ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "charCode":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "msgLen":I
    .end local v5    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v6    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "7bit ASCII encode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 307
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v0    # "charCode":I
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v4    # "msgLen":I
    .restart local v5    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    .restart local v6    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :cond_3
    const/4 v7, 0x7

    :try_start_1
    invoke-virtual {v5, v7, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 310
    .end local v0    # "charCode":I
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

.method public static encodeOctet([BLcom/android/internal/telephony/SmsHeader;)[B
    .locals 8
    .param p0, "data"    # [B
    .param p1, "header"    # Lcom/android/internal/telephony/SmsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    array-length v2, p0

    .line 367
    .local v2, "length":I
    const/4 v5, 0x0

    .line 366
    invoke-static {p1, v5}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    move-result-object v4

    .line 369
    .local v4, "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    if-eqz v4, :cond_0

    .line 370
    iget v5, v4, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    add-int/2addr v2, v5

    .line 373
    :cond_0
    const-string/jumbo v5, "BearerDataInterfaces 1.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "encodeOctet: length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and header = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/16 v5, 0x8c

    if-le v2, v5, :cond_1

    .line 376
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "data length exceed the max 140"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v2    # "length":I
    .end local v4    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :catch_0
    move-exception v1

    .line 391
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Octet encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 380
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v2    # "length":I
    .restart local v4    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-direct {v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 383
    .local v3, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    if-eqz p1, :cond_2

    .line 384
    invoke-static {p1, v4, v3}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->encodeUserdataHeader(Lcom/android/internal/telephony/SmsHeader;Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 387
    :cond_2
    array-length v5, p0

    mul-int/lit8 v0, v5, 0x8

    .line 388
    .local v0, "bits":I
    invoke-virtual {v3, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 389
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method public static encodeTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 404
    const/4 v1, 0x6

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    add-int/lit16 v0, v1, -0x7d0

    .line 407
    .local v0, "year":I
    :goto_0
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->cdmaIntToBcdByte(I)B

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->cdmaIntToBcdByte(I)B

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->cdmaIntToBcdByte(I)B

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->cdmaIntToBcdByte(I)B

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->cdmaIntToBcdByte(I)B

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->cdmaIntToBcdByte(I)B

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 403
    return-void

    .line 406
    .end local v0    # "year":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    add-int/lit16 v0, v1, -0x76c

    .restart local v0    # "year":I
    goto :goto_0
.end method

.method public static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 10
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 542
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v3, :cond_0

    .line 543
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    const-string/jumbo v4, "user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 546
    :cond_0
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uData.msgEncodingSet = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v3, :cond_8

    .line 548
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uData.msgEncoding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v3, :cond_3

    .line 553
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v3, :cond_1

    .line 554
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    const-string/jumbo v4, "user data with octet encoding but null payload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-array v3, v6, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 558
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->encodeOctet([BLcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 559
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 561
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_2

    .line 563
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3, v6}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    move-result-object v2

    .line 565
    .local v2, "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    if-eqz v2, :cond_2

    .line 566
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v4, v2, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 541
    .end local v2    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :cond_2
    :goto_0
    return-void

    .line 570
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 571
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    const-string/jumbo v4, "non-octet user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 574
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_5

    .line 578
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    .line 579
    const-string/jumbo v4, "GSM_7BIT_ALPHABET encoding type dont work fine for CDMA in China, because this type message will be blocked by message center when it is transfered from CT(China Telecom) to CM(China Mobile)"

    .line 578
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v4, "GSM_7BIT_ALPHABET encoding type dont work fine for CDMA in China, dont use this encoding type."

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 584
    :cond_5
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v7, :cond_6

    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3, v9, v4}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->encode7bitAscii(Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 586
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 588
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_2

    .line 590
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3, v7}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    move-result-object v2

    .line 592
    .restart local v2    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    if-eqz v2, :cond_2

    .line 593
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v4, v2, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 596
    .end local v2    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v8, :cond_7

    .line 597
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->encodeUtf16(Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 598
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_2

    .line 602
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3, v8}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    move-result-object v2

    .line 604
    .restart local v2    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    if-eqz v2, :cond_2

    .line 605
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v4, v2, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 609
    .end local v2    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :cond_7
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported user data encoding ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 610
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 609
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 610
    const-string/jumbo v5, ")"

    .line 609
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 614
    :cond_8
    const/4 v1, 0x0

    .line 617
    .local v1, "headerFieldsNum":I
    :try_start_0
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    const-string/jumbo v4, "not set encodetype, so try encode as 7BIT ASCII"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->encode7bitAscii(Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 619
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 621
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_9

    .line 623
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 624
    const/4 v4, 0x2

    .line 623
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    move-result-object v2

    .line 625
    .restart local v2    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    if-eqz v2, :cond_9

    .line 626
    iget v1, v2, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v2    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 654
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "encode sucess, numFields = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 640
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string/jumbo v3, "BearerDataInterfaces 1.0"

    const-string/jumbo v4, "try encode as 7BIT ASCII failed, to encode by Utf16"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->encodeUtf16(Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 642
    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 644
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_9

    .line 646
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3, v8}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    move-result-object v2

    .line 648
    .restart local v2    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    if-eqz v2, :cond_9

    .line 649
    iget v1, v2, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    goto :goto_1
.end method

.method private static encodeUserdataHeader(Lcom/android/internal/telephony/SmsHeader;Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 4
    .param p0, "header"    # Lcom/android/internal/telephony/SmsHeader;
    .param p1, "udhdetails"    # Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    .param p2, "outstream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 239
    const-string/jumbo v1, "BearerDataInterfaces 1.0"

    const-string/jumbo v2, "outstream is null, do noting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 245
    :cond_0
    if-eqz p0, :cond_1

    .line 246
    :try_start_0
    const-string/jumbo v1, "BearerDataInterfaces 1.0"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsHeader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz p1, :cond_2

    .line 248
    const-string/jumbo v1, "BearerDataInterfaces 1.0"

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v1, p1, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataLength:I

    const/16 v2, 0x8

    invoke-virtual {p2, v2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 250
    iget v1, p1, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataLength:I

    mul-int/lit8 v1, v1, 0x8

    .line 251
    invoke-static {p0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v2

    .line 250
    invoke-virtual {p2, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 253
    iget v1, p1, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->skipBits:I

    if-lez v1, :cond_1

    .line 254
    iget v1, p1, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->skipBits:I

    invoke-virtual {p2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    const-string/jumbo v1, "BearerDataInterfaces 1.0"

    const-string/jumbo v2, "error: SmsHeader != null, but we got null udhDetails"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userdata header encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeUtf16(Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "header"    # Lcom/android/internal/telephony/SmsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    .line 330
    .local v3, "length":I
    const/4 v6, 0x4

    .line 329
    invoke-static {p1, v6}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->calcUserdataHeaderDetails(Lcom/android/internal/telephony/SmsHeader;I)Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;

    move-result-object v5

    .line 332
    .local v5, "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    if-eqz v5, :cond_0

    .line 333
    iget v6, v5, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    add-int/2addr v3, v6

    .line 336
    :cond_0
    const-string/jumbo v6, "BearerDataInterfaces 1.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "encodeUtf16: length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and header = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-direct {v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 340
    .local v4, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    if-eqz p1, :cond_1

    .line 341
    invoke-static {p1, v5, v4}, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;->encodeUserdataHeader(Lcom/android/internal/telephony/SmsHeader;Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 344
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v0, v6, 0x10

    .line 345
    .local v0, "bits":I
    const-string/jumbo v6, "utf-16be"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 346
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 349
    .end local v0    # "bits":I
    .end local v3    # "length":I
    .end local v4    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v5    # "udhDetails":Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
    :catch_0
    move-exception v1

    .line 350
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UTF-16 encode failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 347
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :catch_1
    move-exception v2

    .line 348
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UTF-16 encode failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static getUserdataHeaderDataNumBytes(Lcom/android/internal/telephony/SmsHeader;)I
    .locals 4
    .param p0, "header"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    const/4 v3, 0x0

    .line 137
    if-nez p0, :cond_0

    .line 138
    return v3

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 142
    .local v0, "headerBytes":[B
    if-eqz v0, :cond_1

    .line 143
    array-length v1, v0

    return v1

    .line 146
    :cond_1
    const-string/jumbo v1, "BearerDataInterfaces 1.0"

    const-string/jumbo v2, "error: SmsHeader != null, but we got an invalid bytesArray by SmsHeader.toByteArray"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v3
.end method
