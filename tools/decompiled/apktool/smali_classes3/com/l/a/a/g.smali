.class public Lcom/l/a/a/g;
.super Ljava/lang/Object;
.source "MimeTypeFile.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/l/a/a/g;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/l/a/a/g;->b:Ljava/util/Hashtable;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/l/a/a/g;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/l/a/a/g;->b:Ljava/util/Hashtable;

    .line 64
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string/jumbo v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/l/a/a/g;->a(Ljava/io/BufferedReader;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/l/a/a/g;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/l/a/a/g;->b:Ljava/util/Hashtable;

    .line 46
    iput-object p1, p0, Lcom/l/a/a/g;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/l/a/a/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 53
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/l/a/a/g;->a(Ljava/io/BufferedReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    :goto_0
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    :goto_1
    throw v0

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    move-object v1, v2

    .line 121
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    if-nez v1, :cond_0

    .line 126
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 128
    const/4 v3, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 129
    goto :goto_0

    .line 125
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_1
    invoke-direct {p0, v0}, Lcom/l/a/a/g;->d(Ljava/lang/String;)V

    move-object v1, v2

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    if-eqz v1, :cond_3

    .line 135
    invoke-direct {p0, v1}, Lcom/l/a/a/g;->d(Ljava/lang/String;)V

    .line 136
    :cond_3
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 142
    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 154
    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_5

    .line 156
    new-instance v4, Lcom/l/a/a/a;

    invoke-direct {v4, v3}, Lcom/l/a/a/a;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 157
    :goto_1
    invoke-virtual {v4}, Lcom/l/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v4}, Lcom/l/a/a/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual {v4}, Lcom/l/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lcom/l/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lcom/l/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    invoke-virtual {v4}, Lcom/l/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_2
    if-nez v0, :cond_2

    .line 164
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Bad .mime.types entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    move-object v1, v0

    .line 181
    goto :goto_1

    .line 170
    :cond_3
    const-string/jumbo v6, "exts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v6, ","

    invoke-direct {v5, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_4
    :goto_4
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v6, Lcom/l/a/a/f;

    invoke-direct {v6, v1, v0}, Lcom/l/a/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lcom/l/a/a/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v7, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Added: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/l/a/a/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 185
    :cond_5
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 188
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_6
    :goto_5
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Lcom/l/a/a/f;

    invoke-direct {v3, v1, v2}, Lcom/l/a/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/l/a/a/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 200
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Added: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v3}, Lcom/l/a/a/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto/16 :goto_3

    :cond_8
    move-object v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/l/a/a/f;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/l/a/a/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/l/a/a/f;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/l/a/a/g;->a(Ljava/lang/String;)Lcom/l/a/a/f;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/l/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/l/a/a/g;->a(Ljava/io/BufferedReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method
