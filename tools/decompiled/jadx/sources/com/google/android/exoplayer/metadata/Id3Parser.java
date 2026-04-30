package com.google.android.exoplayer.metadata;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Id3Parser implements MetadataParser<Map<String, Object>> {
    @Override // com.google.android.exoplayer.metadata.MetadataParser
    public boolean canParse(String str) {
        return str.equals("application/id3");
    }

    @Override // com.google.android.exoplayer.metadata.MetadataParser
    public Map<String, Object> parse(byte[] bArr, int i) throws ParserException, UnsupportedEncodingException {
        HashMap map = new HashMap();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i);
        int id3Header = parseId3Header(parsableByteArray);
        while (id3Header > 0) {
            int unsignedByte = parsableByteArray.readUnsignedByte();
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int unsignedByte3 = parsableByteArray.readUnsignedByte();
            int unsignedByte4 = parsableByteArray.readUnsignedByte();
            int synchSafeInt = parsableByteArray.readSynchSafeInt();
            if (synchSafeInt <= 1) {
                break;
            }
            parsableByteArray.skip(2);
            if (unsignedByte == 84 && unsignedByte2 == 88 && unsignedByte3 == 88 && unsignedByte4 == 88) {
                String charsetName = getCharsetName(parsableByteArray.readUnsignedByte());
                byte[] bArr2 = new byte[synchSafeInt - 1];
                parsableByteArray.readBytes(bArr2, 0, synchSafeInt - 1);
                int iIndexOf = indexOf(bArr2, 0, (byte) 0);
                String str = new String(bArr2, 0, iIndexOf, charsetName);
                int iIndexOfNot = indexOfNot(bArr2, iIndexOf, (byte) 0);
                map.put(TxxxMetadata.TYPE, new TxxxMetadata(str, new String(bArr2, iIndexOfNot, indexOf(bArr2, iIndexOfNot, (byte) 0) - iIndexOfNot, charsetName)));
            } else {
                String str2 = String.format("%c%c%c%c", Integer.valueOf(unsignedByte), Integer.valueOf(unsignedByte2), Integer.valueOf(unsignedByte3), Integer.valueOf(unsignedByte4));
                byte[] bArr3 = new byte[synchSafeInt];
                parsableByteArray.readBytes(bArr3, 0, synchSafeInt);
                map.put(str2, bArr3);
            }
            id3Header -= synchSafeInt + 10;
        }
        return Collections.unmodifiableMap(map);
    }

    private static int indexOf(byte[] bArr, int i, byte b2) {
        while (i < bArr.length) {
            if (bArr[i] != b2) {
                i++;
            } else {
                return i;
            }
        }
        return bArr.length;
    }

    private static int indexOfNot(byte[] bArr, int i, byte b2) {
        while (i < bArr.length) {
            if (bArr[i] == b2) {
                i++;
            } else {
                return i;
            }
        }
        return bArr.length;
    }

    private static int parseId3Header(ParsableByteArray parsableByteArray) throws ParserException {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        int unsignedByte3 = parsableByteArray.readUnsignedByte();
        if (unsignedByte != 73 || unsignedByte2 != 68 || unsignedByte3 != 51) {
            throw new ParserException(String.format("Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\".", Integer.valueOf(unsignedByte), Integer.valueOf(unsignedByte2), Integer.valueOf(unsignedByte3)));
        }
        parsableByteArray.skip(2);
        int unsignedByte4 = parsableByteArray.readUnsignedByte();
        int synchSafeInt = parsableByteArray.readSynchSafeInt();
        if ((unsignedByte4 & 2) != 0) {
            int synchSafeInt2 = parsableByteArray.readSynchSafeInt();
            if (synchSafeInt2 > 4) {
                parsableByteArray.skip(synchSafeInt2 - 4);
            }
            synchSafeInt -= synchSafeInt2;
        }
        if ((unsignedByte4 & 8) != 0) {
            return synchSafeInt - 10;
        }
        return synchSafeInt;
    }

    private static String getCharsetName(int i) {
        switch (i) {
        }
        return "ISO-8859-1";
    }
}
