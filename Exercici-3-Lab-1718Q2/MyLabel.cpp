#include "MyLabel.h"

MyLabel::MyLabel(QWidget *parent=0):QLabel(parent) {}

void MyLabel::offPressed() {
	setStyleSheet("background: red; color: white");
	QString str = "Alarma desactivada";
	setText(str);
}

void MyLabel::onPressed() {
	setStyleSheet("background: green; color: white");
	QString str = "Alarma - " + QString::number(hora) + ":" + QString::number(minut);
	setText(str);
}

void MyLabel::setHora(int i)  {
	hora = i;
}

void MyLabel::setMinut(int i) {
	minut = i;
}

void MyLabel::reset() {
	hora = 0;
	minut = 0;
	emit emitzero(0);
}