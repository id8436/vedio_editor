package com.crashlytics.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import c.a.a.a.a.b.aa;
import c.a.a.a.a.b.k;
import c.a.a.a.f;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class SessionDataWriter {
    private static final String SIGNAL_DEFAULT = "0";
    private static final ByteString SIGNAL_DEFAULT_BYTE_STRING = ByteString.copyFromUtf8(SIGNAL_DEFAULT);
    private final Context context;
    private StackTraceElement[] exceptionStack;
    private final int maxChainedExceptionsDepth = 8;
    private final ByteString optionalBuildIdBytes;
    private final ByteString packageNameBytes;
    private ActivityManager.RunningAppProcessInfo runningAppProcessInfo;
    private List<StackTraceElement[]> stacks;
    private Thread[] threads;

    public SessionDataWriter(Context context, String str, String str2) {
        this.context = context;
        this.packageNameBytes = ByteString.copyFromUtf8(str2);
        this.optionalBuildIdBytes = str == null ? null : ByteString.copyFromUtf8(str.replace("-", ""));
    }

    public void writeBeginSession(CodedOutputStream codedOutputStream, String str, String str2, long j) throws Exception {
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(str2));
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(str));
        codedOutputStream.writeUInt64(3, j);
    }

    public void writeSessionApp(CodedOutputStream codedOutputStream, String str, String str2, String str3, String str4, int i) throws Exception {
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString byteStringCopyFromUtf82 = ByteString.copyFromUtf8(str2);
        ByteString byteStringCopyFromUtf83 = ByteString.copyFromUtf8(str3);
        ByteString byteStringCopyFromUtf84 = ByteString.copyFromUtf8(str4);
        codedOutputStream.writeTag(7, 2);
        codedOutputStream.writeRawVarint32(getSessionAppSize(byteStringCopyFromUtf8, byteStringCopyFromUtf82, byteStringCopyFromUtf83, byteStringCopyFromUtf84, i));
        codedOutputStream.writeBytes(1, byteStringCopyFromUtf8);
        codedOutputStream.writeBytes(2, byteStringCopyFromUtf82);
        codedOutputStream.writeBytes(3, byteStringCopyFromUtf83);
        codedOutputStream.writeTag(5, 2);
        codedOutputStream.writeRawVarint32(getSessionAppOrgSize());
        codedOutputStream.writeString(1, new k().a(this.context));
        codedOutputStream.writeBytes(6, byteStringCopyFromUtf84);
        codedOutputStream.writeEnum(10, i);
    }

    public void writeSessionOS(CodedOutputStream codedOutputStream, boolean z) throws Exception {
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(Build.VERSION.RELEASE);
        ByteString byteStringCopyFromUtf82 = ByteString.copyFromUtf8(Build.VERSION.CODENAME);
        codedOutputStream.writeTag(8, 2);
        codedOutputStream.writeRawVarint32(getSessionOSSize(byteStringCopyFromUtf8, byteStringCopyFromUtf82, z));
        codedOutputStream.writeEnum(1, 3);
        codedOutputStream.writeBytes(2, byteStringCopyFromUtf8);
        codedOutputStream.writeBytes(3, byteStringCopyFromUtf82);
        codedOutputStream.writeBool(4, z);
    }

    public void writeSessionDevice(CodedOutputStream codedOutputStream, String str, int i, String str2, int i2, long j, long j2, boolean z, Map<aa, String> map, int i3, String str3, String str4) throws Exception {
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString byteStringStringToByteString = stringToByteString(str2);
        ByteString byteStringStringToByteString2 = stringToByteString(str4);
        ByteString byteStringStringToByteString3 = stringToByteString(str3);
        codedOutputStream.writeTag(9, 2);
        codedOutputStream.writeRawVarint32(getSessionDeviceSize(i, byteStringCopyFromUtf8, byteStringStringToByteString, i2, j, j2, z, map, i3, byteStringStringToByteString3, byteStringStringToByteString2));
        codedOutputStream.writeBytes(1, byteStringCopyFromUtf8);
        codedOutputStream.writeEnum(3, i);
        codedOutputStream.writeBytes(4, byteStringStringToByteString);
        codedOutputStream.writeUInt32(5, i2);
        codedOutputStream.writeUInt64(6, j);
        codedOutputStream.writeUInt64(7, j2);
        codedOutputStream.writeBool(10, z);
        for (Map.Entry<aa, String> entry : map.entrySet()) {
            codedOutputStream.writeTag(11, 2);
            codedOutputStream.writeRawVarint32(getDeviceIdentifierSize(entry.getKey(), entry.getValue()));
            codedOutputStream.writeEnum(1, entry.getKey().h);
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(entry.getValue()));
        }
        codedOutputStream.writeUInt32(12, i3);
        if (byteStringStringToByteString3 != null) {
            codedOutputStream.writeBytes(13, byteStringStringToByteString3);
        }
        if (byteStringStringToByteString2 != null) {
            codedOutputStream.writeBytes(14, byteStringStringToByteString2);
        }
    }

    public void writeSessionUser(CodedOutputStream codedOutputStream, String str, String str2, String str3) throws Exception {
        if (str == null) {
            str = "";
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString byteStringStringToByteString = stringToByteString(str2);
        ByteString byteStringStringToByteString2 = stringToByteString(str3);
        int iComputeBytesSize = 0 + CodedOutputStream.computeBytesSize(1, byteStringCopyFromUtf8);
        if (str2 != null) {
            iComputeBytesSize += CodedOutputStream.computeBytesSize(2, byteStringStringToByteString);
        }
        if (str3 != null) {
            iComputeBytesSize += CodedOutputStream.computeBytesSize(3, byteStringStringToByteString2);
        }
        codedOutputStream.writeTag(6, 2);
        codedOutputStream.writeRawVarint32(iComputeBytesSize);
        codedOutputStream.writeBytes(1, byteStringCopyFromUtf8);
        if (str2 != null) {
            codedOutputStream.writeBytes(2, byteStringStringToByteString);
        }
        if (str3 != null) {
            codedOutputStream.writeBytes(3, byteStringStringToByteString2);
        }
    }

    public void writeSessionEvent(CodedOutputStream codedOutputStream, long j, Thread thread, Throwable th, String str, Thread[] threadArr, float f2, int i, boolean z, int i2, long j2, long j3, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, List<StackTraceElement[]> list, StackTraceElement[] stackTraceElementArr, LogFileManager logFileManager, Map<String, String> map) throws Exception {
        this.runningAppProcessInfo = runningAppProcessInfo;
        this.stacks = list;
        this.exceptionStack = stackTraceElementArr;
        this.threads = threadArr;
        ByteString byteStringForLog = logFileManager.getByteStringForLog();
        if (byteStringForLog == null) {
            f.h().a(CrashlyticsCore.TAG, "No log data to include with this event.");
        }
        logFileManager.clearLog();
        codedOutputStream.writeTag(10, 2);
        codedOutputStream.writeRawVarint32(getSessionEventSize(thread, th, str, j, map, f2, i, z, i2, j2, j3, byteStringForLog));
        codedOutputStream.writeUInt64(1, j);
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(str));
        writeSessionEventApp(codedOutputStream, thread, th, i2, map);
        writeSessionEventDevice(codedOutputStream, f2, i, z, i2, j2, j3);
        writeSessionEventLog(codedOutputStream, byteStringForLog);
    }

    private void writeSessionEventApp(CodedOutputStream codedOutputStream, Thread thread, Throwable th, int i, Map<String, String> map) throws Exception {
        codedOutputStream.writeTag(3, 2);
        codedOutputStream.writeRawVarint32(getEventAppSize(thread, th, i, map));
        writeSessionEventAppExecution(codedOutputStream, thread, th);
        if (map != null && !map.isEmpty()) {
            writeSessionEventAppCustomAttributes(codedOutputStream, map);
        }
        if (this.runningAppProcessInfo != null) {
            codedOutputStream.writeBool(3, this.runningAppProcessInfo.importance != 100);
        }
        codedOutputStream.writeUInt32(4, i);
    }

    private void writeSessionEventAppExecution(CodedOutputStream codedOutputStream, Thread thread, Throwable th) throws Exception {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(getEventAppExecutionSize(thread, th));
        writeThread(codedOutputStream, thread, this.exceptionStack, 4, true);
        int length = this.threads.length;
        for (int i = 0; i < length; i++) {
            writeThread(codedOutputStream, this.threads[i], this.stacks.get(i), 0, false);
        }
        writeSessionEventAppExecutionException(codedOutputStream, th, 1, 2);
        codedOutputStream.writeTag(3, 2);
        codedOutputStream.writeRawVarint32(getEventAppExecutionSignalSize());
        codedOutputStream.writeBytes(1, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream.writeBytes(2, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream.writeUInt64(3, 0L);
        codedOutputStream.writeTag(4, 2);
        codedOutputStream.writeRawVarint32(getBinaryImageSize());
        codedOutputStream.writeUInt64(1, 0L);
        codedOutputStream.writeUInt64(2, 0L);
        codedOutputStream.writeBytes(3, this.packageNameBytes);
        if (this.optionalBuildIdBytes != null) {
            codedOutputStream.writeBytes(4, this.optionalBuildIdBytes);
        }
    }

    private void writeSessionEventAppCustomAttributes(CodedOutputStream codedOutputStream, Map<String, String> map) throws Exception {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            codedOutputStream.writeTag(2, 2);
            codedOutputStream.writeRawVarint32(getEventAppCustomAttributeSize(entry.getKey(), entry.getValue()));
            codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(entry.getKey()));
            String value = entry.getValue();
            if (value == null) {
                value = "";
            }
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(value));
        }
    }

    private void writeSessionEventAppExecutionException(CodedOutputStream codedOutputStream, Throwable th, int i, int i2) throws Exception {
        int i3 = 0;
        codedOutputStream.writeTag(i2, 2);
        codedOutputStream.writeRawVarint32(getEventAppExecutionExceptionSize(th, 1));
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(th.getClass().getName()));
        String localizedMessage = th.getLocalizedMessage();
        if (localizedMessage != null) {
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(localizedMessage));
        }
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            writeFrame(codedOutputStream, 4, stackTraceElement, true);
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            if (i < this.maxChainedExceptionsDepth) {
                writeSessionEventAppExecutionException(codedOutputStream, cause, i + 1, 6);
                return;
            }
            while (cause != null) {
                cause = cause.getCause();
                i3++;
            }
            codedOutputStream.writeUInt32(7, i3);
        }
    }

    private void writeThread(CodedOutputStream codedOutputStream, Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) throws Exception {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(getThreadSize(thread, stackTraceElementArr, i, z));
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(thread.getName()));
        codedOutputStream.writeUInt32(2, i);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            writeFrame(codedOutputStream, 3, stackTraceElement, z);
        }
    }

    private void writeFrame(CodedOutputStream codedOutputStream, int i, StackTraceElement stackTraceElement, boolean z) throws Exception {
        codedOutputStream.writeTag(i, 2);
        codedOutputStream.writeRawVarint32(getFrameSize(stackTraceElement, z));
        if (stackTraceElement.isNativeMethod()) {
            codedOutputStream.writeUInt64(1, Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            codedOutputStream.writeUInt64(1, 0L);
        }
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            codedOutputStream.writeUInt64(4, stackTraceElement.getLineNumber());
        }
        codedOutputStream.writeUInt32(5, z ? 4 : 0);
    }

    private void writeSessionEventDevice(CodedOutputStream codedOutputStream, float f2, int i, boolean z, int i2, long j, long j2) throws Exception {
        codedOutputStream.writeTag(5, 2);
        codedOutputStream.writeRawVarint32(getEventDeviceSize(f2, i, z, i2, j, j2));
        codedOutputStream.writeFloat(1, f2);
        codedOutputStream.writeSInt32(2, i);
        codedOutputStream.writeBool(3, z);
        codedOutputStream.writeUInt32(4, i2);
        codedOutputStream.writeUInt64(5, j);
        codedOutputStream.writeUInt64(6, j2);
    }

    private void writeSessionEventLog(CodedOutputStream codedOutputStream, ByteString byteString) throws Exception {
        if (byteString != null) {
            codedOutputStream.writeTag(6, 2);
            codedOutputStream.writeRawVarint32(getEventLogSize(byteString));
            codedOutputStream.writeBytes(1, byteString);
        }
    }

    private int getSessionAppSize(ByteString byteString, ByteString byteString2, ByteString byteString3, ByteString byteString4, int i) {
        int iComputeBytesSize = 0 + CodedOutputStream.computeBytesSize(1, byteString) + CodedOutputStream.computeBytesSize(2, byteString2) + CodedOutputStream.computeBytesSize(3, byteString3);
        int sessionAppOrgSize = getSessionAppOrgSize();
        return iComputeBytesSize + sessionAppOrgSize + CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(sessionAppOrgSize) + CodedOutputStream.computeBytesSize(6, byteString4) + CodedOutputStream.computeEnumSize(10, i);
    }

    private int getSessionAppOrgSize() {
        return 0 + CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(new k().a(this.context)));
    }

    private int getSessionOSSize(ByteString byteString, ByteString byteString2, boolean z) {
        return 0 + CodedOutputStream.computeEnumSize(1, 3) + CodedOutputStream.computeBytesSize(2, byteString) + CodedOutputStream.computeBytesSize(3, byteString2) + CodedOutputStream.computeBoolSize(4, z);
    }

    private int getDeviceIdentifierSize(aa aaVar, String str) {
        return CodedOutputStream.computeEnumSize(1, aaVar.h) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str));
    }

    private int getSessionDeviceSize(int i, ByteString byteString, ByteString byteString2, int i2, long j, long j2, boolean z, Map<aa, String> map, int i3, ByteString byteString3, ByteString byteString4) {
        int i4;
        int iComputeBytesSize = (byteString2 == null ? 0 : CodedOutputStream.computeBytesSize(4, byteString2)) + CodedOutputStream.computeEnumSize(3, i) + 0 + CodedOutputStream.computeBytesSize(1, byteString) + CodedOutputStream.computeUInt32Size(5, i2) + CodedOutputStream.computeUInt64Size(6, j) + CodedOutputStream.computeUInt64Size(7, j2) + CodedOutputStream.computeBoolSize(10, z);
        if (map != null) {
            Iterator<Map.Entry<aa, String>> it = map.entrySet().iterator();
            while (true) {
                i4 = iComputeBytesSize;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<aa, String> next = it.next();
                int deviceIdentifierSize = getDeviceIdentifierSize(next.getKey(), next.getValue());
                iComputeBytesSize = deviceIdentifierSize + CodedOutputStream.computeTagSize(11) + CodedOutputStream.computeRawVarint32Size(deviceIdentifierSize) + i4;
            }
        } else {
            i4 = iComputeBytesSize;
        }
        return (byteString4 == null ? 0 : CodedOutputStream.computeBytesSize(14, byteString4)) + i4 + CodedOutputStream.computeUInt32Size(12, i3) + (byteString3 == null ? 0 : CodedOutputStream.computeBytesSize(13, byteString3));
    }

    private int getBinaryImageSize() {
        int iComputeUInt64Size = 0 + CodedOutputStream.computeUInt64Size(1, 0L) + CodedOutputStream.computeUInt64Size(2, 0L) + CodedOutputStream.computeBytesSize(3, this.packageNameBytes);
        if (this.optionalBuildIdBytes != null) {
            return iComputeUInt64Size + CodedOutputStream.computeBytesSize(4, this.optionalBuildIdBytes);
        }
        return iComputeUInt64Size;
    }

    private int getSessionEventSize(Thread thread, Throwable th, String str, long j, Map<String, String> map, float f2, int i, boolean z, int i2, long j2, long j3, ByteString byteString) {
        int iComputeUInt64Size = 0 + CodedOutputStream.computeUInt64Size(1, j) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str));
        int eventAppSize = getEventAppSize(thread, th, i2, map);
        int iComputeTagSize = iComputeUInt64Size + eventAppSize + CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(eventAppSize);
        int eventDeviceSize = getEventDeviceSize(f2, i, z, i2, j2, j3);
        int iComputeTagSize2 = iComputeTagSize + eventDeviceSize + CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(eventDeviceSize);
        if (byteString != null) {
            int eventLogSize = getEventLogSize(byteString);
            return iComputeTagSize2 + eventLogSize + CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(eventLogSize);
        }
        return iComputeTagSize2;
    }

    private int getEventAppSize(Thread thread, Throwable th, int i, Map<String, String> map) {
        int iComputeBoolSize;
        int eventAppExecutionSize = getEventAppExecutionSize(thread, th);
        int iComputeTagSize = eventAppExecutionSize + CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionSize) + 0;
        if (map != null) {
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (true) {
                iComputeBoolSize = iComputeTagSize;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it.next();
                int eventAppCustomAttributeSize = getEventAppCustomAttributeSize(next.getKey(), next.getValue());
                iComputeTagSize = eventAppCustomAttributeSize + CodedOutputStream.computeTagSize(2) + CodedOutputStream.computeRawVarint32Size(eventAppCustomAttributeSize) + iComputeBoolSize;
            }
        } else {
            iComputeBoolSize = iComputeTagSize;
        }
        if (this.runningAppProcessInfo != null) {
            iComputeBoolSize += CodedOutputStream.computeBoolSize(3, this.runningAppProcessInfo.importance != 100);
        }
        return CodedOutputStream.computeUInt32Size(4, i) + iComputeBoolSize;
    }

    private int getEventAppExecutionSize(Thread thread, Throwable th) {
        int threadSize = getThreadSize(thread, this.exceptionStack, 4, true);
        int iComputeTagSize = threadSize + CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(threadSize) + 0;
        int length = this.threads.length;
        int iComputeTagSize2 = iComputeTagSize;
        for (int i = 0; i < length; i++) {
            int threadSize2 = getThreadSize(this.threads[i], this.stacks.get(i), 0, false);
            iComputeTagSize2 += threadSize2 + CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(threadSize2);
        }
        int eventAppExecutionExceptionSize = getEventAppExecutionExceptionSize(th, 1);
        int iComputeTagSize3 = eventAppExecutionExceptionSize + CodedOutputStream.computeTagSize(2) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionExceptionSize) + iComputeTagSize2;
        int eventAppExecutionSignalSize = getEventAppExecutionSignalSize();
        int iComputeTagSize4 = iComputeTagSize3 + eventAppExecutionSignalSize + CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionSignalSize);
        int binaryImageSize = getBinaryImageSize();
        return iComputeTagSize4 + binaryImageSize + CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(binaryImageSize);
    }

    private int getEventAppCustomAttributeSize(String str, String str2) {
        int iComputeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(str));
        if (str2 == null) {
            str2 = "";
        }
        return iComputeBytesSize + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str2));
    }

    private int getEventDeviceSize(float f2, int i, boolean z, int i2, long j, long j2) {
        return 0 + CodedOutputStream.computeFloatSize(1, f2) + CodedOutputStream.computeSInt32Size(2, i) + CodedOutputStream.computeBoolSize(3, z) + CodedOutputStream.computeUInt32Size(4, i2) + CodedOutputStream.computeUInt64Size(5, j) + CodedOutputStream.computeUInt64Size(6, j2);
    }

    private int getEventLogSize(ByteString byteString) {
        return CodedOutputStream.computeBytesSize(1, byteString);
    }

    private int getEventAppExecutionExceptionSize(Throwable th, int i) {
        int i2 = 0;
        int iComputeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(th.getClass().getName())) + 0;
        String localizedMessage = th.getLocalizedMessage();
        if (localizedMessage != null) {
            iComputeBytesSize += CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(localizedMessage));
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i3 = 0;
        while (i3 < length) {
            int frameSize = getFrameSize(stackTrace[i3], true);
            i3++;
            iComputeBytesSize = frameSize + CodedOutputStream.computeTagSize(4) + CodedOutputStream.computeRawVarint32Size(frameSize) + iComputeBytesSize;
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            if (i < this.maxChainedExceptionsDepth) {
                int eventAppExecutionExceptionSize = getEventAppExecutionExceptionSize(cause, i + 1);
                return iComputeBytesSize + eventAppExecutionExceptionSize + CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionExceptionSize);
            }
            while (cause != null) {
                cause = cause.getCause();
                i2++;
            }
            return iComputeBytesSize + CodedOutputStream.computeUInt32Size(7, i2);
        }
        return iComputeBytesSize;
    }

    private int getEventAppExecutionSignalSize() {
        return 0 + CodedOutputStream.computeBytesSize(1, SIGNAL_DEFAULT_BYTE_STRING) + CodedOutputStream.computeBytesSize(2, SIGNAL_DEFAULT_BYTE_STRING) + CodedOutputStream.computeUInt64Size(3, 0L);
    }

    private int getFrameSize(StackTraceElement stackTraceElement, boolean z) {
        int iComputeUInt64Size;
        if (stackTraceElement.isNativeMethod()) {
            iComputeUInt64Size = CodedOutputStream.computeUInt64Size(1, Math.max(stackTraceElement.getLineNumber(), 0)) + 0;
        } else {
            iComputeUInt64Size = CodedOutputStream.computeUInt64Size(1, 0L) + 0;
        }
        int iComputeBytesSize = iComputeUInt64Size + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            iComputeBytesSize += CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        return CodedOutputStream.computeUInt32Size(5, z ? 2 : 0) + ((stackTraceElement.isNativeMethod() || stackTraceElement.getLineNumber() <= 0) ? iComputeBytesSize : iComputeBytesSize + CodedOutputStream.computeUInt64Size(4, stackTraceElement.getLineNumber()));
    }

    private int getThreadSize(Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        int iComputeUInt32Size = CodedOutputStream.computeUInt32Size(2, i) + CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(thread.getName()));
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            int frameSize = getFrameSize(stackTraceElement, z);
            iComputeUInt32Size += frameSize + CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(frameSize);
        }
        return iComputeUInt32Size;
    }

    private ByteString stringToByteString(String str) {
        if (str == null) {
            return null;
        }
        return ByteString.copyFromUtf8(str);
    }
}
