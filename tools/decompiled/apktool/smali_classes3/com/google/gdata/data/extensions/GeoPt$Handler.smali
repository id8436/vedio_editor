.class Lcom/google/gdata/data/extensions/GeoPt$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "GeoPt.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/GeoPt;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/GeoPt;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/gdata/data/extensions/GeoPt$Handler;->this$0:Lcom/google/gdata/data/extensions/GeoPt;

    .line 134
    const-class v0, Lcom/google/gdata/data/extensions/GeoPt;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 135
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 143
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "label"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt$Handler;->this$0:Lcom/google/gdata/data/extensions/GeoPt;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/GeoPt;->label:Ljava/lang/String;

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string/jumbo v0, "lat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt$Handler;->this$0:Lcom/google/gdata/data/extensions/GeoPt;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/GeoPt;->lat:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidGeoPtLat:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 158
    :cond_2
    const-string/jumbo v0, "lon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt$Handler;->this$0:Lcom/google/gdata/data/extensions/GeoPt;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/GeoPt;->lon:Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    .line 163
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidGeoPtLon:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :cond_3
    const-string/jumbo v0, "elev"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt$Handler;->this$0:Lcom/google/gdata/data/extensions/GeoPt;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/GeoPt;->elev:Ljava/lang/Float;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 171
    :catch_2
    move-exception v0

    .line 172
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidGeoPtElev:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_4
    const-string/jumbo v0, "time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :try_start_3
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt$Handler;->this$0:Lcom/google/gdata/data/extensions/GeoPt;

    invoke-static {p3}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/GeoPt;->time:Lcom/google/gdata/data/DateTime;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 180
    :catch_3
    move-exception v0

    .line 181
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidGeoPtTime:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt$Handler;->this$0:Lcom/google/gdata/data/extensions/GeoPt;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/GeoPt;->lat:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->geoPtLatRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt$Handler;->this$0:Lcom/google/gdata/data/extensions/GeoPt;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/GeoPt;->lon:Ljava/lang/Float;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->geoPtLonRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 201
    :cond_1
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 202
    return-void
.end method
