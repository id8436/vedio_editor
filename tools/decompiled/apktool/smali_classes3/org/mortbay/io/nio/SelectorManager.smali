.class public abstract Lorg/mortbay/io/nio/SelectorManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SelectorManager.java"


# static fields
.field private static final __BUSY_KEY:I

.field private static final __BUSY_PAUSE:I

.field private static final __JVMBUG_THRESHHOLD:I

.field private static final __MAX_SELECTS:I

.field private static final __MONITOR_PERIOD:I


# instance fields
.field private _delaySelectKeyUpdate:Z

.field private _lowResourcesConnections:J

.field private _lowResourcesMaxIdleTime:J

.field private _maxIdleTime:J

.field private transient _selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

.field private _selectSets:I

.field private volatile _set:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "org.mortbay.io.nio.JVMBUG_THRESHHOLD"

    const/16 v1, 0x200

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->__JVMBUG_THRESHHOLD:I

    .line 48
    const-string/jumbo v0, "org.mortbay.io.nio.MONITOR_PERIOD"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->__MONITOR_PERIOD:I

    .line 49
    const-string/jumbo v0, "org.mortbay.io.nio.MAX_SELECTS"

    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->__MAX_SELECTS:I

    .line 50
    const-string/jumbo v0, "org.mortbay.io.nio.BUSY_PAUSE"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->__BUSY_PAUSE:I

    .line 51
    const-string/jumbo v0, "org.mortbay.io.nio.BUSY_KEY"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/io/nio/SelectorManager;->__BUSY_KEY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 53
    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_delaySelectKeyUpdate:Z

    .line 58
    iput v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    .line 913
    return-void
.end method

.method static access$000()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lorg/mortbay/io/nio/SelectorManager;->__MONITOR_PERIOD:I

    return v0
.end method

.method static access$100(Lorg/mortbay/io/nio/SelectorManager;)J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_lowResourcesConnections:J

    return-wide v0
.end method

.method static access$200(Lorg/mortbay/io/nio/SelectorManager;)J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:J

    return-wide v0
.end method

.method static access$300(Lorg/mortbay/io/nio/SelectorManager;)J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_maxIdleTime:J

    return-wide v0
.end method

.method static access$400()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lorg/mortbay/io/nio/SelectorManager;->__BUSY_PAUSE:I

    return v0
.end method

.method static access$500()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lorg/mortbay/io/nio/SelectorManager;->__MAX_SELECTS:I

    return v0
.end method

.method static access$600()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lorg/mortbay/io/nio/SelectorManager;->__JVMBUG_THRESHHOLD:I

    return v0
.end method

.method static access$700()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lorg/mortbay/io/nio/SelectorManager;->__BUSY_KEY:I

    return v0
.end method

.method static access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    return-object v0
.end method


# virtual methods
.method protected abstract acceptChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    invoke-static {p2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 274
    return-void
.end method

.method public abstract dispatch(Ljava/lang/Runnable;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public doSelect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    .line 191
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 192
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->doSelect()V

    .line 193
    :cond_0
    return-void
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    new-array v0, v0, [Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    .line 223
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    new-instance v2, Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-direct {v2, p0, v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;-><init>(Lorg/mortbay/io/nio/SelectorManager;I)V

    aput-object v2, v1, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    .line 227
    return-void
.end method

.method protected doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    .line 235
    if-eqz v1, :cond_1

    .line 236
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 238
    aget-object v2, v1, v0

    .line 239
    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {v2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->stop()V

    .line 236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    .line 243
    return-void
.end method

.method protected abstract endPointClosed(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
.end method

.method protected abstract endPointOpened(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
.end method

.method public getLowResourcesConnections()J
    .locals 4

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_lowResourcesConnections:J

    iget v2, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getLowResourcesMaxIdleTime()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:J

    return-wide v0
.end method

.method public getMaxIdleTime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_maxIdleTime:J

    return-wide v0
.end method

.method public getSelectSets()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    return v0
.end method

.method public isDelaySelectKeyUpdate()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_delaySelectKeyUpdate:Z

    return v0
.end method

.method protected abstract newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;
.end method

.method protected abstract newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public register(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_set:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_set:I

    .line 137
    iget v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    rem-int/2addr v0, v1

    .line 138
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    aget-object v0, v1, v0

    .line 139
    invoke-virtual {v0, p1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 141
    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_set:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_set:I

    .line 118
    iget v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    rem-int/2addr v0, v1

    .line 119
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSet:[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    .line 120
    if-eqz v1, :cond_0

    .line 122
    aget-object v0, v1, v0

    .line 123
    invoke-virtual {v0, p1, p2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 126
    :cond_0
    return-void
.end method

.method public setDelaySelectKeyUpdate(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lorg/mortbay/io/nio/SelectorManager;->_delaySelectKeyUpdate:Z

    .line 203
    return-void
.end method

.method public setLowResourcesConnections(J)V
    .locals 5

    .prologue
    .line 161
    iget v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget v2, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_lowResourcesConnections:J

    .line 162
    return-void
.end method

.method public setLowResourcesMaxIdleTime(J)V
    .locals 1

    .prologue
    .line 180
    iput-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:J

    .line 181
    return-void
.end method

.method public setMaxIdleTime(J)V
    .locals 1

    .prologue
    .line 68
    iput-wide p1, p0, Lorg/mortbay/io/nio/SelectorManager;->_maxIdleTime:J

    .line 69
    return-void
.end method

.method public setSelectSets(I)V
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_lowResourcesConnections:J

    iget v2, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 78
    iput p1, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    .line 79
    iget v2, p0, Lorg/mortbay/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager;->_lowResourcesConnections:J

    .line 80
    return-void
.end method
