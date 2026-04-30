.class public Lcom/adobe/customextractor/SampleLoader/Loadable;
.super Ljava/lang/Object;
.source "Loadable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

.field private dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

.field private loadCancelled:Z

.field private loadFinished:Z

.field private loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

.field private offset:J

.field private parser:Lcom/adobe/customextractor/extractor/Parser;

.field private pendingLoadCancel:Z

.field private sourceUri:Landroid/net/Uri;

.field private trackIndex:I

.field private trackType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/customextractor/SampleLoader/SampleLoader;JLcom/adobe/customextractor/DataSource/DataSource;Landroid/net/Uri;Lcom/adobe/customextractor/Util/Allocate/Allocator;Lcom/adobe/customextractor/extractor/Parser;ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    .line 37
    iput-wide p2, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->offset:J

    .line 38
    iput-object p4, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    .line 39
    iput-object p5, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->sourceUri:Landroid/net/Uri;

    .line 40
    iput-object p6, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    .line 41
    iput-object p7, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->parser:Lcom/adobe/customextractor/extractor/Parser;

    .line 43
    iput p8, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->trackIndex:I

    .line 44
    iput-object p9, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->trackType:Ljava/lang/String;

    .line 46
    iput-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->pendingLoadCancel:Z

    .line 47
    iput-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loadCancelled:Z

    .line 48
    iput-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loadFinished:Z

    .line 49
    return-void
.end method


# virtual methods
.method public cancelLoading()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "LoaderThread"

    const-string/jumbo v1, "Cancel Loading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->pendingLoadCancel:Z

    .line 54
    return-void
.end method

.method public isLoadCancelled()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loadCancelled:Z

    return v0
.end method

.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loadFinished:Z

    return v0
.end method

.method public declared-synchronized run()V
    .locals 15

    .prologue
    const-wide/16 v12, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 120
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LoaderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Async loadsample started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->trackType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v10, Lcom/adobe/customextractor/Util/PositionHolder;

    invoke-direct {v10}, Lcom/adobe/customextractor/Util/PositionHolder;-><init>()V

    .line 122
    iget-wide v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->offset:J

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    move v8, v9

    .line 125
    :goto_0
    if-ne v8, v9, :cond_b

    iget-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->pendingLoadCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_b

    .line 128
    :try_start_1
    iget-wide v2, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    .line 129
    iget-object v11, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    new-instance v0, Lcom/adobe/customextractor/DataSource/DataSpec;

    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->sourceUri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/customextractor/DataSource/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v11, v0}, Lcom/adobe/customextractor/DataSource/DataSource;->open(Lcom/adobe/customextractor/DataSource/DataSpec;)J

    move-result-wide v4

    .line 130
    cmp-long v0, v4, v12

    if-eqz v0, :cond_0

    .line 131
    add-long/2addr v4, v2

    .line 133
    :cond_0
    new-instance v0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;

    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;-><init>(Lcom/adobe/customextractor/DataSource/DataSource;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move v2, v8

    .line 135
    :goto_1
    if-ne v2, v9, :cond_1

    :try_start_2
    iget-boolean v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->pendingLoadCancel:Z

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lcom/adobe/customextractor/Util/Allocate/Allocator;->blockWhileTotalBytesAllocatedExceeds(I)V

    .line 137
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->parser:Lcom/adobe/customextractor/extractor/Parser;

    iget v3, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->trackIndex:I

    invoke-virtual {v1, v0, v10, v3}, Lcom/adobe/customextractor/extractor/Parser;->readSampleData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;Lcom/adobe/customextractor/Util/PositionHolder;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v2

    goto :goto_1

    .line 153
    :cond_1
    if-nez v2, :cond_2

    move v0, v9

    .line 159
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    move v8, v0

    .line 165
    goto :goto_0

    .line 155
    :cond_2
    if-eqz v0, :cond_3

    .line 156
    :try_start_4
    invoke-interface {v0}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    :cond_3
    move v0, v2

    goto :goto_2

    .line 161
    :catch_0
    move-exception v1

    .line 162
    const-string/jumbo v2, "LoaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datasource close exc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :catch_1
    move-exception v0

    move-object v1, v7

    move v2, v8

    .line 142
    :goto_4
    :try_start_5
    const-string/jumbo v3, "LoaderThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 144
    :try_start_6
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 153
    :goto_5
    if-nez v2, :cond_7

    .line 159
    :cond_4
    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 178
    :cond_5
    :goto_7
    monitor-exit p0

    return-void

    .line 146
    :catch_2
    move-exception v0

    .line 147
    :try_start_8
    const-string/jumbo v0, "LoaderThread"

    const-string/jumbo v3, "IO exception while closing data source"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 153
    :catchall_1
    move-exception v0

    move v8, v2

    :goto_8
    if-nez v8, :cond_a

    .line 159
    :cond_6
    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 164
    :goto_a
    :try_start_a
    throw v0

    .line 155
    :cond_7
    if-eqz v1, :cond_4

    .line 156
    invoke-interface {v1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    goto :goto_6

    .line 161
    :catch_3
    move-exception v0

    .line 162
    const-string/jumbo v1, "LoaderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "datasource close exc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 150
    :catch_4
    move-exception v0

    move-object v1, v7

    .line 151
    :goto_b
    :try_start_b
    const-string/jumbo v2, "LoaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Interrupt exc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " loadCancel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->pendingLoadCancel:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 153
    if-nez v8, :cond_8

    move v0, v9

    .line 159
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 161
    :catch_5
    move-exception v1

    .line 162
    :try_start_d
    const-string/jumbo v2, "LoaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datasource close exc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 155
    :cond_8
    if-eqz v1, :cond_9

    .line 156
    invoke-interface {v1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    :cond_9
    move v0, v8

    goto :goto_c

    .line 155
    :cond_a
    if-eqz v1, :cond_6

    .line 156
    invoke-interface {v1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    goto/16 :goto_9

    .line 161
    :catch_6
    move-exception v1

    .line 162
    const-string/jumbo v2, "LoaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datasource close exc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 166
    :cond_b
    const/4 v0, -0x1

    if-ne v8, v0, :cond_c

    .line 167
    const-string/jumbo v0, "LoaderThread"

    const-string/jumbo v1, "Async: End of input"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loadFinished:Z

    goto/16 :goto_7

    .line 170
    :cond_c
    iget-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->pendingLoadCancel:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    if-eqz v0, :cond_5

    .line 171
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 172
    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loadCancelled:Z

    .line 173
    const-string/jumbo v0, "LoaderThread"

    const-string/jumbo v2, "Notifying for cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 175
    const-string/jumbo v0, "LoaderThread"

    const-string/jumbo v2, "Notified"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    monitor-exit v1

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 153
    :catchall_3
    move-exception v0

    move-object v1, v7

    goto/16 :goto_8

    :catchall_4
    move-exception v1

    move v8, v2

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    goto/16 :goto_8

    :catchall_5
    move-exception v0

    goto/16 :goto_8

    .line 150
    :catch_7
    move-exception v1

    move v8, v2

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    goto/16 :goto_b

    .line 141
    :catch_8
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto/16 :goto_4
.end method

.method public runSync()J
    .locals 15

    .prologue
    const-wide/16 v12, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 69
    new-instance v10, Lcom/adobe/customextractor/Util/PositionHolder;

    invoke-direct {v10}, Lcom/adobe/customextractor/Util/PositionHolder;-><init>()V

    .line 70
    iget-wide v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->offset:J

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    .line 72
    const-string/jumbo v0, "LoaderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync LoadSampleStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->trackType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 73
    :goto_0
    if-ne v8, v9, :cond_d

    iget-boolean v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->pendingLoadCancel:Z

    if-nez v0, :cond_d

    .line 76
    :try_start_0
    iget-wide v2, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    .line 77
    iget-object v11, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    new-instance v0, Lcom/adobe/customextractor/DataSource/DataSpec;

    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->sourceUri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/customextractor/DataSource/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v11, v0}, Lcom/adobe/customextractor/DataSource/DataSource;->open(Lcom/adobe/customextractor/DataSource/DataSpec;)J

    move-result-wide v4

    .line 78
    cmp-long v0, v4, v12

    if-eqz v0, :cond_0

    .line 79
    add-long/2addr v4, v2

    .line 81
    :cond_0
    new-instance v0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;

    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;-><init>(Lcom/adobe/customextractor/DataSource/DataSource;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v8

    .line 82
    :goto_1
    if-ne v4, v9, :cond_4

    :try_start_1
    iget-boolean v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->pendingLoadCancel:Z

    if-nez v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/adobe/customextractor/Util/Allocate/Allocator;->totalBytesAllocatedExceeds(I)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V

    .line 86
    invoke-interface {v0}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loadFinished:Z

    .line 88
    const-string/jumbo v1, "LoaderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync LoadSampleBlocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->trackType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-wide v2, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    if-nez v4, :cond_2

    .line 104
    :cond_1
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    move-wide v0, v2

    .line 115
    :goto_4
    return-wide v0

    .line 100
    :cond_2
    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    goto :goto_2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string/jumbo v1, "LoaderThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "datasource close exc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 91
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->parser:Lcom/adobe/customextractor/extractor/Parser;

    iget v2, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->trackIndex:I

    invoke-virtual {v1, v0, v10, v2}, Lcom/adobe/customextractor/extractor/Parser;->readSampleData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;Lcom/adobe/customextractor/Util/PositionHolder;I)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    goto :goto_1

    .line 98
    :cond_4
    if-nez v4, :cond_5

    move v0, v9

    .line 104
    :goto_5
    :try_start_4
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    move v8, v0

    .line 110
    goto/16 :goto_0

    .line 100
    :cond_5
    if-eqz v0, :cond_6

    .line 101
    invoke-interface {v0}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    :cond_6
    move v0, v4

    goto :goto_5

    .line 106
    :catch_1
    move-exception v1

    .line 107
    const-string/jumbo v2, "LoaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datasource close exc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 93
    :catch_2
    move-exception v0

    move-object v1, v7

    move v2, v8

    .line 94
    :goto_7
    :try_start_5
    const-string/jumbo v3, "LoaderThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOexc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 98
    if-nez v2, :cond_7

    move v0, v9

    .line 104
    :goto_8
    :try_start_6
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 106
    :catch_3
    move-exception v1

    .line 107
    const-string/jumbo v2, "LoaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datasource close exc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 100
    :cond_7
    if-eqz v1, :cond_8

    .line 101
    invoke-interface {v1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    :cond_8
    move v0, v2

    goto :goto_8

    .line 95
    :catch_4
    move-exception v0

    move-object v0, v7

    move v4, v8

    .line 98
    :goto_9
    if-nez v4, :cond_9

    move v0, v9

    .line 104
    :goto_a
    :try_start_7
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 106
    :catch_5
    move-exception v1

    .line 107
    const-string/jumbo v2, "LoaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datasource close exc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 100
    :cond_9
    if-eqz v0, :cond_a

    .line 101
    invoke-interface {v0}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    :cond_a
    move v0, v4

    goto :goto_a

    .line 98
    :catchall_0
    move-exception v0

    move v4, v8

    :goto_b
    if-nez v4, :cond_c

    .line 104
    :cond_b
    :goto_c
    :try_start_8
    iget-object v1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 109
    :goto_d
    throw v0

    .line 100
    :cond_c
    if-eqz v7, :cond_b

    .line 101
    invoke-interface {v7}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    goto :goto_c

    .line 106
    :catch_6
    move-exception v1

    .line 107
    const-string/jumbo v2, "LoaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datasource close exc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 111
    :cond_d
    const-string/jumbo v0, "LoaderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LoadSample Sync Complete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->trackType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, -0x1

    if-ne v8, v0, :cond_e

    .line 113
    iput-boolean v9, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->loadFinished:Z

    .line 115
    :cond_e
    iget-wide v0, v10, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    goto/16 :goto_4

    .line 98
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v7, v1

    move v4, v2

    goto :goto_b

    .line 95
    :catch_7
    move-exception v1

    goto/16 :goto_9

    .line 93
    :catch_8
    move-exception v1

    move v2, v4

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    goto/16 :goto_7
.end method

.method public setOffset(J)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/adobe/customextractor/SampleLoader/Loadable;->offset:J

    .line 62
    return-void
.end method
