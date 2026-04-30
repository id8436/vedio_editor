.class public Lorg/mortbay/util/RolloverFileOutputStream;
.super Ljava/io/FilterOutputStream;
.source "RolloverFileOutputStream.java"


# static fields
.field static final YYYY_MM_DD:Ljava/lang/String; = "yyyy_mm_dd"

.field private static __rollover:Ljava/util/Timer;

.field static class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;


# instance fields
.field private _append:Z

.field private _file:Ljava/io/File;

.field private _fileBackupFormat:Ljava/text/SimpleDateFormat;

.field private _fileDateFormat:Ljava/text/SimpleDateFormat;

.field private _filename:Ljava/lang/String;

.field private _retainDays:I

.field private _rollTask:Lorg/mortbay/util/RolloverFileOutputStream$RollTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x1

    const-string/jumbo v1, "ROLLOVERFILE_RETAIN_DAYS"

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZI)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "ROLLOVERFILE_RETAIN_DAYS"

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZI)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/TimeZone;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    if-nez p5, :cond_0

    .line 138
    const-string/jumbo v1, "ROLLOVERFILE_DATE_FORMAT"

    const-string/jumbo v2, "yyyy_MM_dd"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 139
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    .line 141
    if-nez p6, :cond_1

    .line 142
    const-string/jumbo v1, "ROLLOVERFILE_BACKUP_FORMAT"

    const-string/jumbo v2, "HHmmssSSS"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 143
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    .line 145
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 148
    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    .line 154
    :cond_2
    if-nez p1, :cond_3

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid filename"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_3
    iput-object p1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    .line 158
    iput-boolean p2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_append:Z

    .line 159
    iput p3, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_retainDays:I

    .line 160
    invoke-direct {p0}, Lorg/mortbay/util/RolloverFileOutputStream;->setFile()V

    .line 162
    sget-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string/jumbo v0, "org.mortbay.util.RolloverFileOutputStream"

    invoke-static {v0}, Lorg/mortbay/util/RolloverFileOutputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    move-object v6, v0

    :goto_0
    monitor-enter v6

    .line 164
    :try_start_0
    sget-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    if-nez v0, :cond_4

    .line 165
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    .line 167
    :cond_4
    new-instance v0, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;-><init>(Lorg/mortbay/util/RolloverFileOutputStream;Lorg/mortbay/util/RolloverFileOutputStream$1;)V

    iput-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_rollTask:Lorg/mortbay/util/RolloverFileOutputStream$RollTask;

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 170
    invoke-virtual {v3, p4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 172
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 177
    invoke-virtual {v0, p4}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 178
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 179
    sget-object v1, Lorg/mortbay/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    iget-object v2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_rollTask:Lorg/mortbay/util/RolloverFileOutputStream$RollTask;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v1, v2, v0, v4, v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 180
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    return-void

    .line 162
    :cond_5
    sget-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    move-object v6, v0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static access$100(Lorg/mortbay/util/RolloverFileOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/mortbay/util/RolloverFileOutputStream;->setFile()V

    return-void
.end method

.method static access$200(Lorg/mortbay/util/RolloverFileOutputStream;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/mortbay/util/RolloverFileOutputStream;->removeOldFiles()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 162
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

.method private removeOldFiles()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 249
    iget v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_retainDays:I

    if-lez v1, :cond_0

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 253
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "yyyy_mm_dd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 257
    if-gez v5, :cond_1

    .line 275
    :cond_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 260
    const-string/jumbo v7, "yyyy_mm_dd"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 263
    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_0

    .line 265
    aget-object v7, v5, v0

    .line 266
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-ltz v8, :cond_2

    .line 268
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 270
    sub-long v10, v2, v10

    const-wide/32 v12, 0x5265c00

    div-long/2addr v10, v12

    iget v7, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_retainDays:I

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    .line 271
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 263
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized setFile()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Cannot write log directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "yyyy_mm_dd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 220
    if-ltz v4, :cond_2

    .line 222
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "yyyy_mm_dd"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 229
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Cannot write log file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_3
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 235
    :cond_4
    iput-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    .line 236
    iget-boolean v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_append:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 237
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 238
    :cond_5
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 239
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_append:Z

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 240
    if-eqz v1, :cond_6

    .line 241
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :cond_6
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.util.RolloverFileOutputStream"

    invoke-static {v0}, Lorg/mortbay/util/RolloverFileOutputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 299
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    .line 306
    iget-object v1, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_rollTask:Lorg/mortbay/util/RolloverFileOutputStream$RollTask;

    invoke-virtual {v1}, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;->cancel()Z

    .line 307
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    return-void

    .line 297
    :cond_0
    sget-object v0, Lorg/mortbay/util/RolloverFileOutputStream;->class$org$mortbay$util$RolloverFileOutputStream:Ljava/lang/Class;

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 303
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    .line 302
    throw v1

    .line 307
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getRetainDays()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->_retainDays:I

    return v0
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 282
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 289
    return-void
.end method
