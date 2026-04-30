.class public Lorg/mortbay/jetty/HttpConnection$Output;
.super Lorg/mortbay/jetty/AbstractGenerator$Output;
.source "HttpConnection.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 4

    .prologue
    .line 983
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    .line 984
    iget-object v0, p1, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    check-cast v0, Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v1, p1, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v1}, Lorg/mortbay/jetty/Connector;->getMaxIdleTime()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lorg/mortbay/jetty/AbstractGenerator$Output;-><init>(Lorg/mortbay/jetty/AbstractGenerator;J)V

    .line 985
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_closed:Z

    if-eqz v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    .line 1001
    :goto_1
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    goto :goto_0

    .line 999
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->flushResponse()V

    goto :goto_1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    .line 1012
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 1013
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_closed:Z

    if-eqz v0, :cond_0

    .line 1022
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 1024
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method public sendContent(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 1036
    const/4 v2, 0x0

    .line 1038
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_closed:Z

    if-eqz v0, :cond_0

    .line 1039
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->getContentWritten()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 1042
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "!empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_1
    instance-of v0, p1, Lorg/mortbay/jetty/HttpContent;

    if-eqz v0, :cond_a

    .line 1046
    check-cast p1, Lorg/mortbay/jetty/HttpContent;

    .line 1047
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 1048
    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/HttpFields;->containsKey(Lorg/mortbay/io/Buffer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1050
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->getSetCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    .line 1051
    if-nez v3, :cond_6

    .line 1052
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 1073
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    .line 1074
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/mortbay/jetty/HttpFields;->putLongField(Lorg/mortbay/io/Buffer;J)V

    .line 1075
    :cond_3
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 1076
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    .line 1077
    if-eqz v0, :cond_9

    .line 1078
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v3, v0, v4, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 1085
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 1086
    if-nez v0, :cond_5

    .line 1087
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :cond_5
    move-object p1, v2

    .line 1096
    :goto_2
    instance-of v1, v0, Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_b

    .line 1098
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    check-cast v0, Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v0, v6}, Lorg/mortbay/jetty/AbstractGenerator;->addContent(Lorg/mortbay/io/Buffer;Z)V

    .line 1099
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0, v6}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    .line 1136
    :goto_3
    return-void

    .line 1055
    :cond_6
    instance-of v0, v1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 1057
    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v3}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_7

    .line 1059
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v3, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 1062
    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v5, ";charset="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v5, ";= "

    invoke-static {v3, v5}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1068
    :cond_8
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v5, ";charset="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v5, ";= "

    invoke-static {v3, v5}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1079
    :cond_9
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1081
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    .line 1082
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v4, v5}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    goto/16 :goto_1

    .line 1089
    :cond_a
    instance-of v0, p1, Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_10

    .line 1091
    check-cast p1, Lorg/mortbay/resource/Resource;

    .line 1092
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    .line 1093
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_2

    .line 1101
    :cond_b
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_f

    .line 1103
    check-cast v0, Ljava/io/InputStream;

    .line 1107
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v1}, Lorg/mortbay/jetty/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v1

    .line 1108
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v2}, Lorg/mortbay/jetty/AbstractGenerator;->getUncheckedBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 1110
    invoke-interface {v2, v0, v1}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v1

    .line 1112
    :goto_4
    if-ltz v1, :cond_c

    .line 1114
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v1}, Lorg/mortbay/jetty/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1115
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection$Output;->flush()V

    .line 1117
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v1}, Lorg/mortbay/jetty/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v1

    .line 1118
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v2}, Lorg/mortbay/jetty/AbstractGenerator;->getUncheckedBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 1119
    invoke-interface {v2, v0, v1}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v1

    goto :goto_4

    .line 1121
    :cond_c
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v1}, Lorg/mortbay/jetty/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1122
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection$Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    if-eqz p1, :cond_d

    .line 1127
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->release()V

    goto/16 :goto_3

    .line 1129
    :cond_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3

    .line 1126
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_e

    .line 1127
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->release()V

    .line 1129
    :goto_5
    throw v1

    :cond_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 1134
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown content type?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v0, p1

    move-object p1, v2

    goto/16 :goto_2
.end method

.method public sendResponse(Lorg/mortbay/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    check-cast v0, Lorg/mortbay/jetty/HttpGenerator;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpGenerator;->sendResponse(Lorg/mortbay/io/Buffer;)V

    .line 1031
    return-void
.end method
