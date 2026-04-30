.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field public static final ALL:I = -0x1

.field static final ALL_ASCII:I = 0x1

.field static final MOSTLY_ASCII:I = 0x2

.field static final MOSTLY_NONASCII:I = 0x3

.field static class$javax$mail$internet$MimeUtility:Ljava/lang/Class;

.field private static decodeStrict:Z

.field private static defaultJavaCharset:Ljava/lang/String;

.field private static defaultMIMECharset:Ljava/lang/String;

.field private static encodeEolStrict:Z

.field private static foldEncodedWords:Z

.field private static foldText:Z

.field private static java2mime:Ljava/util/Hashtable;

.field private static mime2java:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    sput-boolean v2, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 123
    sput-boolean v1, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 124
    sput-boolean v1, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 125
    sput-boolean v2, Ljavax/mail/internet/MimeUtility;->foldText:Z

    .line 129
    :try_start_0
    const-string/jumbo v3, "mail.mime.decodetext.strict"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_0

    const-string/jumbo v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 132
    const-string/jumbo v3, "mail.mime.encodeeol.strict"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_7

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    :goto_1
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 135
    const-string/jumbo v3, "mail.mime.foldencodedwords"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_8

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    :goto_2
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 138
    const-string/jumbo v3, "mail.mime.foldtext"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_1

    const-string/jumbo v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Ljavax/mail/internet/MimeUtility;->foldText:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1149
    :goto_3
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    .line 1150
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    .line 1155
    :try_start_1
    sget-object v1, Ljavax/mail/internet/MimeUtility;->class$javax$mail$internet$MimeUtility:Ljava/lang/Class;

    if-nez v1, :cond_9

    const-string/jumbo v1, "javax.mail.internet.MimeUtility"

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljavax/mail/internet/MimeUtility;->class$javax$mail$internet$MimeUtility:Ljava/lang/Class;

    :goto_4
    const-string/jumbo v2, "/META-INF/javamail.charset.map"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1159
    if-eqz v3, :cond_3

    .line 1161
    :try_start_2
    new-instance v2, Lcom/l/b/a/e;

    invoke-direct {v2, v3}, Lcom/l/b/a/e;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1164
    :try_start_3
    move-object v0, v2

    check-cast v0, Lcom/l/b/a/e;

    move-object v1, v0

    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-static {v1, v3}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/l/b/a/e;Ljava/util/Hashtable;)V

    .line 1167
    move-object v0, v2

    check-cast v0, Lcom/l/b/a/e;

    move-object v1, v0

    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-static {v1, v3}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/l/b/a/e;Ljava/util/Hashtable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1170
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1181
    :cond_3
    :goto_5
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1182
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_1"

    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_1"

    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-1"

    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_2"

    const-string/jumbo v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_2"

    const-string/jumbo v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-2"

    const-string/jumbo v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_3"

    const-string/jumbo v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_3"

    const-string/jumbo v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-3"

    const-string/jumbo v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_4"

    const-string/jumbo v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_4"

    const-string/jumbo v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-4"

    const-string/jumbo v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_5"

    const-string/jumbo v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_5"

    const-string/jumbo v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-5"

    const-string/jumbo v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_6"

    const-string/jumbo v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_6"

    const-string/jumbo v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-6"

    const-string/jumbo v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_7"

    const-string/jumbo v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_7"

    const-string/jumbo v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-7"

    const-string/jumbo v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_8"

    const-string/jumbo v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_8"

    const-string/jumbo v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-8"

    const-string/jumbo v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "8859_9"

    const-string/jumbo v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859_9"

    const-string/jumbo v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso8859-9"

    const-string/jumbo v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "sjis"

    const-string/jumbo v3, "Shift_JIS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "jis"

    const-string/jumbo v3, "ISO-2022-JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso2022jp"

    const-string/jumbo v3, "ISO-2022-JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "euc_jp"

    const-string/jumbo v3, "euc-jp"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "koi8_r"

    const-string/jumbo v3, "koi8-r"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "euc_cn"

    const-string/jumbo v3, "euc-cn"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "euc_tw"

    const-string/jumbo v3, "euc-tw"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v2, "euc_kr"

    const-string/jumbo v3, "euc-kr"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    :cond_4
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1228
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso-2022-cn"

    const-string/jumbo v3, "ISO2022CN"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "iso-2022-kr"

    const-string/jumbo v3, "ISO2022KR"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "utf-8"

    const-string/jumbo v3, "UTF8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "utf8"

    const-string/jumbo v3, "UTF8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "ja_jp.iso2022-7"

    const-string/jumbo v3, "ISO2022JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "ja_jp.eucjp"

    const-string/jumbo v3, "EUCJIS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "euc-kr"

    const-string/jumbo v3, "KSC5601"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "euckr"

    const-string/jumbo v3, "KSC5601"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "us-ascii"

    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v2, "x-us-ascii"

    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    :cond_5
    return-void

    :cond_6
    move v3, v1

    .line 131
    goto/16 :goto_0

    :cond_7
    move v3, v1

    .line 134
    goto/16 :goto_1

    :cond_8
    move v3, v1

    .line 137
    goto/16 :goto_2

    .line 1155
    :cond_9
    :try_start_5
    sget-object v1, Ljavax/mail/internet/MimeUtility;->class$javax$mail$internet$MimeUtility:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .line 1169
    :catchall_0
    move-exception v1

    move-object v2, v3

    .line 1170
    :goto_6
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1174
    :goto_7
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1176
    :catch_0
    move-exception v1

    goto/16 :goto_5

    .line 1171
    :catch_1
    move-exception v1

    goto/16 :goto_5

    :catch_2
    move-exception v2

    goto :goto_7

    .line 1169
    :catchall_1
    move-exception v1

    goto :goto_6

    .line 141
    :catch_3
    move-exception v1

    goto/16 :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAscii(Ljava/io/InputStream;IZ)I
    .locals 17

    .prologue
    .line 1356
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1358
    const/16 v2, 0x1000

    .line 1359
    const/4 v8, 0x0

    .line 1360
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1361
    sget-boolean v1, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    move v11, v1

    .line 1362
    :goto_0
    const/4 v1, 0x0

    .line 1363
    if-eqz p1, :cond_13

    .line 1364
    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    const/16 v1, 0x1000

    .line 1365
    :goto_1
    new-array v2, v1, [B

    move-object v9, v2

    move v7, v8

    move v10, v1

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    .line 1367
    :goto_2
    if-eqz p1, :cond_0

    .line 1369
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5, v10}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const/4 v5, -0x1

    if-ne v12, v5, :cond_3

    .line 1405
    :cond_0
    :goto_3
    if-nez p1, :cond_d

    if-eqz p2, :cond_d

    .line 1412
    const/4 v1, 0x3

    .line 1429
    :goto_4
    return v1

    .line 1361
    :cond_1
    const/4 v1, 0x0

    move v11, v1

    goto :goto_0

    .line 1364
    :cond_2
    const/16 v1, 0x1000

    move/from16 v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 1371
    :cond_3
    const/4 v6, 0x0

    .line 1372
    const/4 v5, 0x0

    move v8, v7

    move v14, v6

    move v6, v5

    move v5, v14

    move v15, v2

    move v2, v4

    move v4, v15

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    :goto_5
    if-ge v6, v12, :cond_c

    .line 1377
    :try_start_1
    aget-byte v7, v9, v6

    and-int/lit16 v7, v7, 0xff

    .line 1378
    if-eqz v11, :cond_6

    const/16 v13, 0xd

    if-ne v5, v13, :cond_4

    const/16 v13, 0xa

    if-ne v7, v13, :cond_5

    :cond_4
    const/16 v13, 0xd

    if-eq v5, v13, :cond_6

    const/16 v5, 0xa

    if-ne v7, v5, :cond_6

    .line 1381
    :cond_5
    const/4 v3, 0x1

    .line 1382
    :cond_6
    const/16 v5, 0xd

    if-eq v7, v5, :cond_7

    const/16 v5, 0xa

    if-ne v7, v5, :cond_9

    .line 1383
    :cond_7
    const/4 v5, 0x0

    .line 1389
    :cond_8
    :goto_6
    invoke-static {v7}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_b

    .line 1390
    if-eqz p2, :cond_a

    .line 1391
    const/4 v1, 0x3

    goto :goto_4

    .line 1385
    :cond_9
    add-int/lit8 v5, v8, 0x1

    .line 1386
    const/16 v8, 0x3e6

    if-le v5, v8, :cond_8

    .line 1387
    const/4 v4, 0x1

    goto :goto_6

    .line 1393
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 1372
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v8, v5

    move v5, v7

    goto :goto_5

    .line 1395
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1401
    :cond_c
    const/4 v5, -0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_12

    .line 1402
    sub-int p1, p1, v12

    move v7, v8

    move v14, v4

    move v4, v2

    move v2, v14

    move v15, v1

    move v1, v3

    move v3, v15

    goto :goto_2

    .line 1414
    :cond_d
    if-nez v3, :cond_10

    .line 1419
    if-eqz v1, :cond_e

    .line 1420
    const/4 v1, 0x3

    goto :goto_4

    .line 1422
    :cond_e
    if-eqz v2, :cond_f

    .line 1423
    const/4 v1, 0x2

    goto :goto_4

    .line 1425
    :cond_f
    const/4 v1, 0x1

    goto :goto_4

    .line 1427
    :cond_10
    if-le v4, v3, :cond_11

    .line 1428
    const/4 v1, 0x2

    goto :goto_4

    .line 1429
    :cond_11
    const/4 v1, 0x3

    goto :goto_4

    .line 1398
    :catch_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    move v14, v3

    move v3, v1

    move v1, v14

    move v15, v4

    move v4, v2

    move v2, v15

    goto/16 :goto_3

    :cond_12
    move v7, v8

    move v14, v4

    move v4, v2

    move v2, v14

    move v15, v1

    move v1, v3

    move v3, v15

    goto/16 :goto_2

    :cond_13
    move-object v9, v1

    move v7, v8

    move v10, v2

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_2
.end method

.method static checkAscii(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1285
    .line 1286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 1288
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1289
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1290
    add-int/lit8 v0, v0, 0x1

    .line 1288
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1295
    :cond_1
    if-nez v0, :cond_2

    .line 1296
    const/4 v0, 0x1

    .line 1300
    :goto_2
    return v0

    .line 1297
    :cond_2
    if-le v1, v0, :cond_3

    .line 1298
    const/4 v0, 0x2

    goto :goto_2

    .line 1300
    :cond_3
    const/4 v0, 0x3

    goto :goto_2
.end method

.method static checkAscii([B)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1314
    move v1, v0

    move v2, v0

    .line 1316
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 1320
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1321
    add-int/lit8 v1, v1, 0x1

    .line 1316
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1323
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1326
    :cond_1
    if-nez v1, :cond_2

    .line 1327
    const/4 v0, 0x1

    .line 1331
    :goto_2
    return v0

    .line 1328
    :cond_2
    if-le v2, v1, :cond_3

    .line 1329
    const/4 v0, 0x2

    goto :goto_2

    .line 1331
    :cond_3
    const/4 v0, 0x3

    goto :goto_2
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 1156
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 291
    const-string/jumbo v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lcom/l/b/a/b;

    invoke-direct {v0, p0}, Lcom/l/b/a/b;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 302
    :cond_0
    :goto_0
    return-object p0

    .line 293
    :cond_1
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    new-instance v0, Lcom/l/b/a/i;

    invoke-direct {v0, p0}, Lcom/l/b/a/i;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 295
    :cond_2
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    :cond_3
    new-instance v0, Lcom/l/b/a/k;

    invoke-direct {v0, p0}, Lcom/l/b/a/k;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 299
    :cond_4
    const-string/jumbo v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 812
    const/4 v0, 0x0

    .line 813
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 814
    :goto_0
    const-string/jumbo v2, "=?"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 815
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    const-string/jumbo v3, "?="

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 817
    if-gez v3, :cond_1

    .line 828
    :cond_0
    if-nez v0, :cond_2

    .line 832
    :goto_1
    return-object p0

    .line 819
    :cond_1
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 821
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 825
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    add-int/lit8 v0, v3, 0x2

    .line 827
    goto :goto_0

    .line 830
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 831
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 822
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 486
    const-string/jumbo v0, " \t\n\r"

    .line 498
    const-string/jumbo v2, "=?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 543
    :goto_0
    return-object p0

    .line 503
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p0, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 504
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 505
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 508
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 510
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x20

    if-eq v3, v8, :cond_1

    const/16 v8, 0x9

    if-eq v3, v8, :cond_1

    const/16 v8, 0xd

    if-eq v3, v8, :cond_1

    const/16 v8, 0xa

    if-ne v3, v8, :cond_2

    .line 514
    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 519
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    if-nez v0, :cond_3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 525
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v3

    move v2, v4

    .line 539
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v2

    goto :goto_1

    .line 528
    :catch_0
    move-exception v0

    .line 532
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v0, :cond_6

    .line 533
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 536
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    move v2, v1

    .line 537
    goto :goto_2

    .line 543
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3f

    const/4 v4, -0x1

    .line 722
    const-string/jumbo v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 726
    :cond_0
    const/4 v0, 0x2

    .line 727
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 728
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 729
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 732
    add-int/lit8 v0, v1, 0x1

    .line 733
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 734
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 735
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 738
    add-int/lit8 v1, v1, 0x1

    .line 739
    const-string/jumbo v3, "?="

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 740
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 741
    :cond_3
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 745
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 747
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {v1}, Lcom/l/b/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 752
    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 753
    new-instance v0, Lcom/l/b/a/b;

    invoke-direct {v0, v4}, Lcom/l/b/a/b;-><init>(Ljava/io/InputStream;)V

    .line 765
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 766
    new-array v4, v1, [B

    .line 768
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 772
    if-gtz v1, :cond_8

    const-string/jumbo v0, ""

    .line 778
    :goto_1
    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 780
    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 781
    sget-boolean v2, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v2, :cond_4

    .line 782
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    :cond_5
    return-object v0

    .line 754
    :cond_6
    const-string/jumbo v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 755
    new-instance v0, Lcom/l/b/a/g;

    invoke-direct {v0, v4}, Lcom/l/b/a/g;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 789
    throw v0

    .line 757
    :cond_7
    :try_start_1
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "unknown encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 790
    :catch_1
    move-exception v0

    .line 792
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 772
    :cond_8
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 793
    :catch_2
    move-exception v0

    .line 801
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0

    .line 776
    :cond_9
    :try_start_3
    const-string/jumbo v0, ""
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method

.method private static doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 663
    if-eqz p1, :cond_0

    .line 664
    invoke-static {v2}, Lcom/l/b/a/d;->a([B)I

    move-result v1

    .line 669
    :goto_0
    if-le v1, p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v1, 0x1

    if-le v9, v1, :cond_1

    .line 672
    const/4 v1, 0x0

    div-int/lit8 v2, v9, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 674
    div-int/lit8 v1, v9, 0x2

    invoke-virtual {p0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 704
    :goto_1
    return-void

    .line 666
    :cond_0
    move/from16 v0, p6

    invoke-static {v2, v0}, Lcom/l/b/a/h;->a([BZ)I

    move-result v1

    goto :goto_0

    .line 678
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 680
    if-eqz p1, :cond_3

    .line 681
    new-instance v1, Lcom/l/b/a/d;

    invoke-direct {v1, v3}, Lcom/l/b/a/d;-><init>(Ljava/io/OutputStream;)V

    .line 686
    :goto_2
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 687
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 693
    if-nez p5, :cond_2

    .line 694
    sget-boolean v1, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    if-eqz v1, :cond_4

    .line 695
    const-string/jumbo v1, "\r\n "

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    :cond_2
    :goto_4
    move-object/from16 v0, p7

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    const/4 v1, 0x0

    :goto_5
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 701
    aget-byte v3, v2, v1

    int-to-char v3, v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 683
    :cond_3
    new-instance v1, Lcom/l/b/a/h;

    move/from16 v0, p6

    invoke-direct {v1, v3, v0}, Lcom/l/b/a/h;-><init>(Ljava/io/OutputStream;Z)V

    goto :goto_2

    .line 697
    :cond_4
    const-string/jumbo v1, " "

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 702
    :cond_5
    const-string/jumbo v1, "?="

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 688
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 320
    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-object p0

    .line 322
    :cond_1
    const-string/jumbo v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Lcom/l/b/a/c;

    invoke-direct {v0, p0}, Lcom/l/b/a/c;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 324
    :cond_2
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    new-instance v0, Lcom/l/b/a/j;

    invoke-direct {v0, p0}, Lcom/l/b/a/j;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 326
    :cond_3
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    :cond_4
    new-instance v0, Lcom/l/b/a/l;

    invoke-direct {v0, p0}, Lcom/l/b/a/l;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 330
    :cond_5
    const-string/jumbo v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 357
    if-nez p1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-object p0

    .line 359
    :cond_1
    const-string/jumbo v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    new-instance v0, Lcom/l/b/a/c;

    invoke-direct {v0, p0}, Lcom/l/b/a/c;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 361
    :cond_2
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    new-instance v0, Lcom/l/b/a/j;

    invoke-direct {v0, p0}, Lcom/l/b/a/j;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 363
    :cond_3
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    :cond_4
    new-instance v0, Lcom/l/b/a/l;

    invoke-direct {v0, p0, p2}, Lcom/l/b/a/l;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 367
    :cond_5
    const-string/jumbo v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 613
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    .line 614
    if-ne v0, v5, :cond_0

    .line 651
    :goto_0
    return-object p0

    .line 619
    :cond_0
    if-nez p1, :cond_2

    .line 620
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p1

    .line 626
    :goto_1
    if-nez p2, :cond_1

    .line 627
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 628
    const-string/jumbo p2, "Q"

    .line 634
    :cond_1
    :goto_2
    const-string/jumbo v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    .line 642
    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 643
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v3, v0, 0x44

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, p3

    invoke-static/range {v0 .. v7}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 651
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 623
    :cond_2
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 630
    :cond_3
    const-string/jumbo p2, "B"

    goto :goto_2

    .line 636
    :cond_4
    const-string/jumbo v0, "Q"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 637
    const/4 v1, 0x0

    goto :goto_3

    .line 639
    :cond_5
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Unknown transfer encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fold(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x4c

    const/16 v8, 0x20

    const/16 v7, 0x9

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 910
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v0, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-object p1

    .line 916
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 917
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 918
    if-eq v2, v8, :cond_6

    if-eq v2, v7, :cond_6

    const/16 v4, 0xd

    if-eq v2, v4, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    .line 921
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_3

    .line 922
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 925
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    if-le v0, v9, :cond_0

    .line 929
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 931
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p0

    if-le v2, v9, :cond_5

    move v2, v3

    move v4, v0

    move v0, v1

    .line 933
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 934
    if-eq v2, v3, :cond_7

    add-int v5, p0, v0

    if-le v5, v9, :cond_7

    .line 942
    :cond_4
    if-ne v2, v3, :cond_a

    .line 944
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    const-string/jumbo p1, ""

    .line 956
    :cond_5
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 957
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 916
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 936
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 937
    if-eq v5, v8, :cond_8

    if-ne v5, v7, :cond_9

    .line 938
    :cond_8
    if-eq v4, v8, :cond_9

    if-eq v4, v7, :cond_9

    move v2, v0

    .line 933
    :cond_9
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_3

    .line 949
    :cond_a
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 952
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 953
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 954
    const/4 p0, 0x1

    .line 955
    goto :goto_2
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1094
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1099
    const/4 v0, 0x0

    .line 1101
    :try_start_0
    const-string/jumbo v1, "mail.mime.charset"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1103
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1104
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1105
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1126
    :goto_1
    return-object v0

    .line 1109
    :cond_0
    :try_start_1
    const-string/jumbo v0, "file.encoding"

    const-string/jumbo v1, "8859_1"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1126
    :cond_1
    :goto_2
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_1

    .line 1111
    :catch_0
    move-exception v0

    .line 1118
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljavax/mail/internet/MimeUtility$1NullInputStream;

    invoke-direct {v1}, Ljavax/mail/internet/MimeUtility$1NullInputStream;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1120
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1121
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1122
    const-string/jumbo v0, "8859_1"

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_2

    .line 1102
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static getDefaultMIMECharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1135
    :try_start_0
    const-string/jumbo v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :cond_0
    :goto_0
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1139
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    .line 1140
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    return-object v0

    .line 1136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    .line 235
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    .line 239
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const-string/jumbo v1, "text/*"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljavax/mail/internet/AsciiOutputStream;

    invoke-direct {v0, v2, v2}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 248
    :try_start_1
    invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_1
    invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 258
    const-string/jumbo v0, "base64"

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string/jumbo v0, "base64"

    goto :goto_0

    .line 252
    :pswitch_0
    const-string/jumbo v0, "7bit"

    goto :goto_0

    .line 255
    :pswitch_1
    const-string/jumbo v0, "quoted-printable"

    goto :goto_0

    .line 264
    :cond_1
    new-instance v0, Ljavax/mail/internet/AsciiOutputStream;

    sget-boolean v1, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    invoke-direct {v0, v3, v1}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 267
    :try_start_2
    invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    :goto_2
    invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 270
    const-string/jumbo v0, "7bit"

    goto :goto_0

    .line 272
    :cond_2
    const-string/jumbo v0, "base64"

    goto :goto_0

    .line 249
    :catch_1
    move-exception v1

    goto :goto_1

    .line 268
    :catch_2
    move-exception v1

    goto :goto_2

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    .line 176
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    const-string/jumbo v2, "text/*"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    .line 184
    const/4 v2, -0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 185
    packed-switch v0, :pswitch_data_0

    .line 193
    const-string/jumbo v0, "base64"

    .line 199
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :goto_2
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string/jumbo v0, "base64"

    goto :goto_2

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :pswitch_0
    const-string/jumbo v0, "7bit"

    goto :goto_1

    .line 190
    :pswitch_1
    const-string/jumbo v0, "quoted-printable"

    goto :goto_1

    .line 200
    :catch_1
    move-exception v1

    goto :goto_2

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, p2

    .line 1032
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1033
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    .line 1038
    :goto_1
    return v0

    .line 1032
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1036
    goto :goto_1

    .line 1037
    :catch_0
    move-exception v0

    move v0, v1

    .line 1038
    goto :goto_1
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1050
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-object p0

    .line 1054
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1055
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static loadMappings(Lcom/l/b/a/e;Ljava/util/Hashtable;)V
    .locals 3

    .prologue
    .line 1246
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/l/b/a/e;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1251
    if-nez v0, :cond_2

    .line 1270
    :cond_1
    :goto_1
    return-void

    .line 1253
    :cond_2
    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1258
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1263
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \t"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1266
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1267
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1268
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1247
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1072
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-object p0

    .line 1076
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method static final nonascii(I)Z
    .locals 1

    .prologue
    .line 1433
    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/4 v2, 0x0

    const/16 v6, 0x22

    .line 852
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 859
    :goto_0
    if-ge v1, v3, :cond_9

    .line 860
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 861
    if-eq v4, v6, :cond_0

    if-eq v4, v9, :cond_0

    if-eq v4, v8, :cond_0

    if-ne v4, v7, :cond_6

    .line 863
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 864
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 865
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    move v1, v2

    .line 867
    :goto_1
    if-ge v0, v3, :cond_4

    .line 868
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 869
    if-eq v2, v6, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_1

    if-ne v2, v7, :cond_2

    .line 871
    :cond_1
    if-ne v2, v7, :cond_3

    if-ne v1, v8, :cond_3

    .line 875
    :cond_2
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 867
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 874
    :cond_3
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 878
    :cond_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 879
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 890
    :cond_5
    :goto_3
    return-object p0

    .line 880
    :cond_6
    const/16 v5, 0x20

    if-lt v4, v5, :cond_7

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 882
    :cond_7
    const/4 v0, 0x1

    .line 859
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 885
    :cond_9
    if-eqz v0, :cond_5

    .line 886
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 887
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 888
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 969
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v0, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-object p0

    .line 972
    :cond_1
    const/4 v0, 0x0

    .line 974
    :goto_1
    const-string/jumbo v1, "\r\n"

    invoke-static {p0, v1}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_d

    .line 976
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 977
    add-int/lit8 v1, v2, 0x1

    .line 978
    if-ge v1, v3, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 979
    add-int/lit8 v1, v1, 0x1

    .line 980
    :cond_2
    if-eqz v2, :cond_3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_b

    .line 984
    :cond_3
    if-ge v1, v3, :cond_9

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_4

    if-ne v4, v8, :cond_9

    .line 985
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 986
    :goto_2
    if-ge v1, v3, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_5

    if-ne v4, v8, :cond_6

    .line 987
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 988
    :cond_6
    if-nez v0, :cond_7

    .line 989
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 990
    :cond_7
    if-eqz v2, :cond_8

    .line 991
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 992
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 994
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 998
    :cond_9
    if-nez v0, :cond_a

    .line 999
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1000
    :cond_a
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1005
    :cond_b
    if-nez v0, :cond_c

    .line 1006
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1007
    :cond_c
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1009
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1012
    :cond_d
    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
