package com.example.demo.Service;



import com.example.demo.Model.Historico;
import com.example.demo.Repository.HistoricoRepository;
import com.fazecast.jSerialComm.SerialPort;
import jakarta.transaction.Transactional;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class ArduinoService {
    private SerialPort serialPort;
    private final HistoricoRepository repository;

    public ArduinoService(HistoricoRepository repository) {
        this.repository = repository;
        this.serialPort = SerialPort.getCommPort("COM4");
        this.serialPort.setBaudRate(9600);
        this.serialPort.openPort();
    }
    @Transactional // pedi ao gemini ajuda nessa parte , porque nao dava save( e trouxe a resoluçao do transactional )
    public void controlarLed(char comando) {
        if (serialPort.isOpen()) {
            serialPort.writeBytes(new byte[]{(byte) comando}, 1);
            String status = (comando == '1') ? "LIGADO" : "DESLIGADO";
            repository.save(new Historico(status));
        }
    }
    public List<Historico> listarHistorico() {
        return repository.findAll(Sort.by(Sort.Direction.DESC, "id"));
    }
}


