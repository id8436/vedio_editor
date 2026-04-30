.class public Lcom/dropbox/core/DbxSdkVersion;
.super Ljava/lang/Object;
.source "DbxSdkVersion.java"


# static fields
.field private static final ResourceName:Ljava/lang/String; = "/sdk-version.txt"

.field public static final Version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/dropbox/core/DbxSdkVersion;->loadVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxSdkVersion;->Version:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadLineFromResource()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxSdkVersion$LoadException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    const-class v0, Lcom/dropbox/core/DbxSdkVersion;

    const-string/jumbo v1, "/sdk-version.txt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    new-instance v0, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    const-string/jumbo v1, "Not found."

    invoke-direct {v0, v1}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->utf8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 39
    if-nez v2, :cond_1

    new-instance v0, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    const-string/jumbo v2, "No lines."

    invoke-direct {v0, v2}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    new-instance v2, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found more than one line.  Second line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :cond_2
    :try_start_4
    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    return-object v2
.end method

.method private static loadVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/dropbox/core/DbxSdkVersion;->loadLineFromResource()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "[0-9]+(?:\\.[0-9]+)*(?:-[-_A-Za-z0-9]+)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/dropbox/core/DbxSdkVersion$LoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Text doesn\'t follow expected pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dropbox/core/DbxSdkVersion$LoadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/dropbox/core/DbxSdkVersion$LoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error loading version from resource \"sdk-version.txt\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxSdkVersion$LoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    return-object v0
.end method
